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

find . -type f -iname '*.jpg' -not -iname '\.*' | while read -r __file; do
    if ! grep -Fxq "$(sha1sum <"${__file}")" <'.optimized'; then
        __target="_opt_${__file/\.\//}"
        __old_size="$(stat -c '%s' "${__file}")"
        jpegtran -copy none -optimize -outfile "${__target}" "${__file}"
        __new_size="$(stat -c '%s' "${__target}")"
        echo "Old Size: ${__old_size}"
        if ! [ "${__new_size}" -lt "${__old_size}" ]; then
            echo "New Size: ${__old_size}"
            cp "${__file}" "${__target}"
        else
            echo "New Size: ${__new_size}"
        fi

    fi
done

find . -iname '_opt_*' | while read -r __file; do
    mv "${__file}" "${__file/*_opt_/}"
done

# find . -type f -not -iname '\.*' | while read -r __file; do
#     sha1sum <"${__file}"
# done | sort >'.optimized'

popd

rm '.hold'

exit
