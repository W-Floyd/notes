#!/bin/bash

cd './source/img/' || {
    echo 'Not in the right directory, run from root of notes folder'
    exit 1
}

find . -type f -iname '*.png' -not -iname '\.*' | while read -r __file; do
    if ! grep -Fxq "$(sha1sum <"${__file}")" <'.optimized'; then
        zopflipng --prefix='_opt_' "${__file}"
    fi
done

find . -iname '_opt_*' | while read -r __file; do
    sha1sum <"${__file}" >>'.optimized'
    mv "${__file}" "${__file/*_opt_/}"
done

exit
