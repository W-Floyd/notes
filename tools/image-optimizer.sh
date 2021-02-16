#!/bin/bash

touch '.hold'

pushd './source/img/' || {
    echo 'Not in the right directory, run from root of notes folder'
    rm '.hold'
    exit 1
}

touch '.optimized'

find . -type f -iname '*.png' -not -iname '\.*' | while read -r __file; do
    if ! grep -Fxq "$(sha1sum <"${__file}")" <'.optimized'; then
        zopflipng --prefix='_opt_' "${__file}"
    fi
done

find . -iname '_opt_*' | while read -r __file; do
    mv "${__file}" "${__file/*_opt_/}"
done

find . -type f -not -iname '\.*' | while read -r __file; do
    sha1sum <"${__file}"
done | sort >'.optimized'

popd

rm '.hold'

exit
