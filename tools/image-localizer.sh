#!/bin/bash

cd './source/' || {
    echo 'Not in the right directory, run from root of notes folder'
    exit 1
}

__img_dir='./img'

grep -rEl '!\[[^]]*\]\([http|https][^)]*\)' | while read -r __file; do
    grep -hoE '!\[[^]]*\]\([http|https][^)]*\)' <"${__file}" | sed -e 's/.*(\(.*\))/\1/' | while read -r __link; do
        __hash="$(sha1sum <<<"${__link}" | sed 's/ .*//')"
        __output="${__img_dir}/${__hash}.${__link/*./}"
        sed -e "s|${__link}|!imgdir/${__hash}.${__link/*./}|g" -i "${__file}"
        curl "${__link}" -o "${__output}"
        echo "${__link} ${__output}" >> "${__img_dir}/.links"
    done
done

__tmp_file="$(mktemp)"
sort "${__img_dir}/.links" | uniq > "${__tmp_file}"
rm "${__img_dir}/.links"
mv "${__tmp_file}" "${__img_dir}/.links"

exit
