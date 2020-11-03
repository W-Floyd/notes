#!/bin/bash

__source_dir='./source/'
__target_dir='./export/'

readarray -t __source_files < <(
    find "${__source_dir}" -iname '*.md' | while read -r __file; do
        echo "${__file}"
    done
)

readarray -t __target_files < <(
    sed -e "s|^${__source_dir}|${__target_dir}|" -e 's|\.md$|.pdf|' < <(
        for file in "${__source_files[@]}"; do
            echo "${file}"
        done
    )
)

__top_dir="$(pwd)"

for n in $(seq 0 $((${#__source_files[@]} - 1))); do
    echo
    echo "${__target_files[${n}]}"
    __source_dir_local="${__top_dir}/$(dirname "${__source_files[${n}]}")"
    __target_dir_local="${__top_dir}/$(dirname "${__target_files[${n}]}")"
    __source_file_local="${__top_dir}/${__source_files[${n}]}"
    __target_file_local="${__top_dir}/${__target_files[${n}]}"
    mkdir -p "${__target_dir_local}"
    pushd "${__source_dir_local}" &>/dev/null
    pandoc -o "${__target_file_local}" "$(basename "${__source_file_local}")"
    popd &>/dev/null
done
