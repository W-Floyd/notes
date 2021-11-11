#!/bin/bash

set -x

find . -iname '*.svg' | while read -r __file; do
    rsvg-convert "${__file}" -z 4 -f png -o "${__file%.*}.png"
done

exit
