#!/bin/bash

__export_version='0'
__top_dir="$(pwd)"
__img_temp='img'

__quiet='true'

__hash() {
    echo -n "${__export_version}"
    cat | md5sum
}

__compare() {
    if [ "${1}" == "${2}" ]; then
        return 0
    else
        return 1
    fi
}

__pp() {
    pp -img="${__target_dir_local}/${__img_temp}" "${@}"
}

__check_file() {
    if ! [ -e "${1}" ]; then
        touch "${1}"
        touch "${__top_dir}/.no_output"
        echo "${1}" >>"${__top_dir}/.no_output"
        sort "${__top_dir}/.no_output" | uniq >"${__top_dir}/.no_output2"
        mv "${__top_dir}/.no_output2" "${__top_dir}/.no_output"
    fi
}

__date() {
    date '+%Y-%m-%d %k:%M:%S'
}

###

__source_dir='./source/'
__target_dir='./export/'
__target_temp_dir='./.tmp_export/'
__hash_dir='./.hashes/'

if [ -d "${__target_dir}" ]; then
    mv "${__target_dir}" "${__target_temp_dir}"
fi

cp -r "${__source_dir}" "${__target_dir}"
find "${__target_dir}" \( -name "*.sh" -or -name "*.md" \) \( -type l -o -type f \) -delete

if ! [ -d "${__hash_dir}" ]; then
    mkdir "${__hash_dir}"
fi

if [ "${#}" == 0 ]; then
    # __output_formats=('pdf' 'html')
    __output_formats=('pdf')
else
    __output_formats=${@}
fi

readarray -t __source_files < <(
    find "${__source_dir}" -iname '*.md' -not -iname '\.*' | while read -r __file; do
        echo "${__file}"
    done
)

readarray -t __target_files < <(
    sed -e "s|^${__source_dir}|${__target_dir}|" -e 's|\.md$||' < <(
        for file in "${__source_files[@]}"; do
            echo "${file}"
        done
    )
)

readarray -t __source_scripts < <(
    find "${__source_dir}" -iname '*.sh' -not -iname '\.*' | while read -r __file; do
        if grep -vEq '^\.' <<<"$(basename "${__file}")"; then
            echo "${__file}"
        fi
    done
)

readarray -t __hash_files < <(
    sed -e "s|^${__source_dir}|${__hash_dir}|" < <(
        for file in "${__source_files[@]}"; do
            echo "${file}"
        done
    )
)

readarray -t __hash_scripts < <(
    sed -e "s|^${__source_dir}|${__hash_dir}|" < <(
        for file in "${__source_scripts[@]}"; do
            echo "${file}"
        done
    )
)

readarray -t __target_scripts < <(
    sed -e "s|^${__source_dir}|${__target_dir}|" -e 's|\.sh$||' < <(
        for file in "${__source_scripts[@]}"; do
            echo "${file}"
        done
    )
)

for n in $(seq 0 $((${#__source_files[@]} - 1))); do
    __source_dir_local="${__top_dir}/$(dirname "${__source_files[${n}]}")"
    __target_dir_local="${__top_dir}/$(dirname "${__target_files[${n}]}")"
    __source_file_local="${__top_dir}/${__source_files[${n}]}"
    __target_file_local="${__top_dir}/${__target_files[${n}]}"
    __hash_file_local="${__top_dir}/${__hash_files[${n}]}"
    __old_file_local="${__top_dir}/$(sed -e "s|^${__target_dir}|${__target_temp_dir}|" <<<"${__target_files[${n}]}")"
    mkdir -p "${__target_dir_local}"

    ln -s "${__source_file_local}" "${__target_file_local}.md"

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in ${__output_formats[@]}; do
            {
                __output=''
                __newhash="$(__hash < <(cat "./$(basename "${__source_file_local}")"; __pp <"./$(basename "${__source_file_local}")"))"
                if ! [ -e "${__hash_file_local}" ]; then
                    mkdir -p "$(dirname "${__hash_file_local}")"
                    touch "${__hash_file_local}"
                fi
                __oldhash="$(cat "${__hash_file_local}")"
                if ! __compare "${__newhash}" "${__oldhash}" || (! [ -e "${__old_file_local}.${f}" ]); then
                    echo "${__newhash}" >"${__hash_file_local}"
                    __pp "$(basename "${__source_file_local}")" |
                        pandoc -o "${__target_file_local}.${f}" \
                            --template="${__top_dir}/templates/template" \
                            --standalone \
                            --mathjax
                    __check_file "${__target_file_local}.${f}"
                    echo "$(__date)  BUILT - ${__output}${__target_files[${n}]}.${f}"
                else
                    cp "${__old_file_local}.${f}" "${__target_file_local}.${f}"
                    if [ "${__quiet}" != 'true' ]; then
                        echo "$(__date) COPIED - ${__output}${__target_files[${n}]}.${f}"
                    fi
                fi
            } &
        done

        popd &>/dev/null || { echo 'Something is very wrong'; }

    }
done

for n in $(seq 0 $((${#__source_scripts[@]} - 1))); do
    __source_dir_local="${__top_dir}/$(dirname "${__source_scripts[${n}]}")"
    __target_dir_local="${__top_dir}/$(dirname "${__target_scripts[${n}]}")"
    __source_file_local="${__top_dir}/${__source_scripts[${n}]}"
    __target_file_local="${__top_dir}/${__target_scripts[${n}]}"
    __hash_file_local="${__top_dir}/${__hash_scripts[${n}]}"
    __old_file_local="${__top_dir}/$(sed -e "s|^${__target_dir}|${__target_temp_dir}|" <<<"${__target_scripts[${n}]}")"
    mkdir -p "${__target_dir_local}"

    ln -s "${__source_file_local}" "${__target_file_local}.sh"

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in ${__output_formats[@]}; do

            {
                __output=''
                __newhash="$(__pp <<<"$("./$(basename "${__source_file_local}")")" | __hash)"
                if ! [ -e "${__hash_file_local}" ]; then
                    mkdir -p "$(dirname "${__hash_file_local}")"
                    touch "${__hash_file_local}"
                fi
                __oldhash="$(cat "${__hash_file_local}")"
                if ! __compare "${__newhash}" "${__oldhash}" || (! [ -e "${__old_file_local}.${f}" ]); then
                    echo "${__newhash}" >"${__hash_file_local}"
                    __pp <("./$(basename "${__source_file_local}")") |
                        pandoc -o "${__target_file_local}.${f}" \
                            --template="${__top_dir}/templates/template" \
                            --standalone \
                            --mathjax
                    __check_file "${__target_file_local}.${f}"
                    echo "$(__date)  BUILT - ${__output}${__target_scripts[${n}]}.${f}"
                else
                    cp "${__old_file_local}.${f}" "${__target_file_local}.${f}"
                    if [ "${__quiet}" != 'true' ]; then
                        echo "$(__date) COPIED - ${__output}${__target_scripts[${n}]}.${f}"
                    fi
                fi
            } &
        done

        popd &>/dev/null || { echo 'Something is very wrong'; }

    }
done

wait

find "${__target_dir}" -empty -type d -delete

if [ -d "${__target_temp_dir}" ]; then
    rm -r "${__target_temp_dir}"
fi

exit
