#!/bin/bash

cd './source/' || {
    echo 'Not in the right directory, run from root of notes folder'
    exit 1
}

__img_dir='./img'

find "${__img_dir}" -type f -not -iname '\.*' |
    sed -e 's|.*/||' |
    sort |
    grep -vxFf <(grep -roE '(!imgdir/[^)]*)' | sed -e 's|.*/||' | sort) |
    while read -r __file; do
        rm "${__img_dir}/${__file}"
    done

exit
