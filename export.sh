#!/bin/bash

__source_dir='./source/'
__target_dir='./export/'

if [ -d "${__target_dir}" ]; then
    find "${__target_dir}" -type f -delete
    find "${__target_dir}" -type l -delete
else
    mkdir "${__target_dir}"
fi

if [ "${#}" == 0 ]; then
    # __output_formats=('pdf' 'html')
    __output_formats=('pdf' 'html')
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
    find "${__source_dir}" -iname '*.sh' | while read -r __file; do
        if grep -vEq '^\.' <<<"$(basename "${__file}")"; then
            echo "${__file}"
        fi

    done
)

readarray -t __target_scripts < <(
    sed -e "s|^${__source_dir}|${__target_dir}|" -e 's|\.sh$||' < <(
        for file in "${__source_scripts[@]}"; do
            echo "${file}"
        done
    )
)

__top_dir="$(pwd)"
__img_temp='img'

for n in $(seq 0 $((${#__source_files[@]} - 1))); do
    __source_dir_local="${__top_dir}/$(dirname "${__source_files[${n}]}")"
    __target_dir_local="${__top_dir}/$(dirname "${__target_files[${n}]}")"
    __source_file_local="${__top_dir}/${__source_files[${n}]}"
    __target_file_local="${__top_dir}/${__target_files[${n}]}"
    mkdir -p "${__target_dir_local}"

    ln -s "${__source_file_local}" "${__target_file_local}.md"

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in "${__output_formats[@]}"; do
            {
                pp -img="${__target_dir_local}/${__img_temp}" "$(basename "${__source_file_local}")" |
                    pandoc -o "${__target_file_local}.${f}" \
                        --template="${__top_dir}/templates/template" \
                        --standalone \
                        --mathjax
                echo "${__target_files[${n}]}.${f}"
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
    mkdir -p "${__target_dir_local}"

    ln -s "${__source_file_local}" "${__target_file_local}.sh"

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in "${__output_formats[@]}"; do
            {
                pp -img="${__target_dir_local}/${__img_temp}" <("./$(basename "${__source_file_local}")") |
                    pandoc -o "${__target_file_local}.${f}" \
                        --template="${__top_dir}/templates/template" \
                        --standalone \
                        --mathjax
                echo
                echo "${__target_scripts[${n}]}.${f}"
            } &
        done

        popd &>/dev/null || { echo 'Something is very wrong'; }

    }
done

wait

find "${__target_dir}" -empty -type d -delete

exit
