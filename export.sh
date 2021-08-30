#!/bin/bash

__export_version='0'
__top_dir="$(pwd)"
__img_temp='img'

__quiet='true'

if [ "${#}" == 0 ]; then
    # __output_formats=('pdf' 'html')
    __output_formats=('pdf')
else
    __output_formats=${@}
fi

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
    __format="${1}"
    shift
    pp \
        "-Dtopdir=${__top_dir}/source" \
        "-Dimgdir=${__top_dir}/source/img" \
        '-DAnswer=!ifeq(!format)(html)(&\boxed{\bm{!1} \bm{!2} \bm{!3}})(\Aboxed{\bm{!1} &\bm{!2} \bm{!3}})' \
        '-DAboxed=!ifeq(!format)(html)(&\boxed{!1!2!3})(\Aboxed{!1&!2!3})' \
        '-DbashLuaRound=tonumber(string.format(\"%.\" .. (!2 or 0) .. \"f\", !1))' \
        '-DlocalLuaRound=tonumber(string.format("%." .. (!2 or 0) .. "f", !1))' \
        "-Dbashcache=!bash(${__top_dir}/tools/bashcache.sh !pp(!1))" \
        '-Dbashlua=!bashcache(lua <<< "!1")' \
        '-Dbashmathr=!bashlua(print(!bashLuaRound(!1)(!2)))' \
        '-Dbashmath=!bashlua(print(!1))' \
        '-Dlocalmathr=!lua(print(!localLuaRound(!1)(!2)))' \
        '-Dlocalmath=!lua(print(!1))' \
        '-Dmathr=!localmathr(!1)(!2)' \
        '-Dmath=!localmath(!1)' \
        '-Dpassthrough=!2' \
        '-DEQDefine=!passthrough()
~~~~~~
!define(!2_f)(!1)
!define(!2)((!3))
!define(!2_v)(!3)
!define(!2_u)(!4)
~~~~~~' \
        '-DEQDefineV=!passthrough()
~~~~~~
!define(!2_f)(!1)
!define(!2)((!3))
!define(!2_v)(!4)
!define(!2_u)(!5)
~~~~~~' \
        '-DmathD=!passthrough()
~~~~~~
!define(!1)(!math(!2))
!pp(!!1)
~~~~~~' \
        '-DAGiven=!pp(!!1_f) &= !pp(!!1_v) !pp(!!1_u)' \
        '-DGiven=!pp(!!1_f) = !pp(!!1_v) !pp(!!1_u)' \
        '-Dmpsq=~\frac{\mathrm{m}}{\mathrm{s}^2}' \
        '-Dnpm=~\frac{\mathrm{N}}{\mathrm{m}}' \
        '-Dnm=\mathrm{~N}\cdot\mathrm{m}' \
        '-Dkg=\mathrm{~kg}' \
        '-Dmm=\mathrm{~mm}' \
        '-Dmps=~\frac{\mathrm{m}}{\mathrm{s}}' \
        '-Drads=~\frac{\mathrm{Rad}}{\mathrm{s}}' \
        '-Dmpa=\mathrm{~MPa}' \
        "-Dbible=!bash(${__top_dir}/tools/bible.sh \"!1\")" \
        "-${__format}" \
        -img="${__target_dir_local}/${__img_temp}" \
        "${@}"
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

################################################################################

# __template_map - output formats to use a template for, default will be no template.
declare -A __template_map
__template_map['pdf']='true'

__source_dir='./source/'
__target_dir='./export/'
__target_temp_dir='./.tmp_export/'
__hash_dir='./.hashes/'

'./tools/image-localizer.sh'

if [ -d "${__target_dir}" ]; then
    mv "${__target_dir}" "${__target_temp_dir}"
fi

cp -r "${__source_dir}" "${__target_dir}"
find "${__target_dir}" \( -name "*.sh" -or -name "*.md" \) \( -type l -o -type f \) -delete

if ! [ -d "${__hash_dir}" ]; then
    mkdir "${__hash_dir}"
fi

readarray -t __source_files < <(
    find "${__source_dir}" -iname '*.md' -not -iname '\.*' | (
        if [ "${IGNORE_SUMMARY}" == 'true' ]; then
            grep -v 'Summary'
        else
            cat
        fi
    )
)

readarray -t __target_files < <(
    sed -e "s|^${__source_dir}|${__target_dir}|" -e 's|\.md$||' < <(
        printf '%s\n' "${__source_files[@]}"
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

echo "$(__date)  BUILDING"

for n in $(seq 0 $((${#__source_files[@]} - 1))); do
    __source_dir_local="${__top_dir}/$(dirname "${__source_files[${n}]}")"
    __target_dir_local="${__top_dir}/$(dirname "${__target_files[${n}]}")"
    __source_file_local="${__top_dir}/${__source_files[${n}]}"
    __target_file_local="${__top_dir}/${__target_files[${n}]}"
    __hash_file_local="${__top_dir}/${__hash_files[${n}]}"
    __old_file_local="${__top_dir}/$(sed -e "s|^${__target_dir}|${__target_temp_dir}|" <<<"${__target_files[${n}]}")"
    mkdir -p "${__target_dir_local}"

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in ${__output_formats[@]}; do
            {
                __hash_file_local_format="${__hash_file_local}.${f}"
                __newhash="$(__hash < <(
                    cat "./$(basename "${__source_file_local}")"
                    __pp "${f}" "$(basename "${__source_file_local}")"
                ))"
                if ! [ -e "${__hash_file_local_format}" ]; then
                    mkdir -p "$(dirname "${__hash_file_local_format}")"
                    touch "${__hash_file_local_format}"
                fi
                __oldhash="$(cat "${__hash_file_local_format}")"
                if ! __compare "${__newhash}" "${__oldhash}" || (! [ -e "${__old_file_local}.${f}" ]); then
                    echo "${__newhash}" >"${__hash_file_local_format}"
                    __pp "${f}" "$(basename "${__source_file_local}")" | {
                        if [ "${__template_map[${f}]}" == 'true' ]; then
                            pandoc -o "${__target_file_local}.${f}" \
                                --template="${__top_dir}/templates/template" \
                                --standalone \
                                --mathjax
                        else
                            pandoc -o "${__target_file_local}.${f}" \
                                --standalone \
                                --mathjax
                        fi
                    }
                    __check_file "${__target_file_local}.${f}"
                    echo "$(__date)  BUILT    - ${__target_files[${n}]}.${f}"
                else
                    cp "${__old_file_local}.${f}" "${__target_file_local}.${f}"
                    if [ "${__quiet}" != 'true' ]; then
                        echo "$(__date) COPIED - ${__target_files[${n}]}.${f}"
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

    pushd "${__source_dir_local}" &>/dev/null && {

        if ! [ -d "${__target_dir_local}/${__img_temp}" ]; then
            mkdir "${__target_dir_local}/${__img_temp}"
        fi

        for f in ${__output_formats[@]}; do

            {
                __newhash="$(__pp "${f}" <<<"$("./$(basename "${__source_file_local}")")" | __hash)"
                if ! [ -e "${__hash_file_local}.${f}" ]; then
                    mkdir -p "$(dirname "${__hash_file_local}.${f}")"
                    touch "${__hash_file_local}.${f}"
                fi
                __oldhash="$(cat "${__hash_file_local}.${f}")"
                if ! __compare "${__newhash}" "${__oldhash}" || (! [ -e "${__old_file_local}.${f}" ]); then
                    echo "${__newhash}" >"${__hash_file_local}.${f}"
                    __pp "${f}" <("./$(basename "${__source_file_local}")") | {
                        if [ "${__template_map[${f}]}" == 'true' ]; then
                            pandoc -o "${__target_file_local}.${f}" \
                                --template="${__top_dir}/templates/template" \
                                --standalone \
                                --mathjax
                        else
                            pandoc -o "${__target_file_local}.${f}" \
                                --standalone \
                                --mathjax
                        fi
                    }

                    __check_file "${__target_file_local}.${f}"
                    echo "$(__date)  BUILT    - ${__target_scripts[${n}]}.${f}"
                else
                    cp "${__old_file_local}.${f}" "${__target_file_local}.${f}"
                    if [ "${__quiet}" != 'true' ]; then
                        echo "$(__date) COPIED - ${__target_scripts[${n}]}.${f}"
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
