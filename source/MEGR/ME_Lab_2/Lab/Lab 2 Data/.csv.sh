#!/bin/bash

if [ -d 'csv' ]; then
    rm -r 'csv'
fi

mkdir 'csv'

find . -maxdepth 1 -iname '*.dat' | while read -r __file; do

    sed -e '1,3d' "${__file}" |
        cut -d, -f3,2 |
        awk -F "," '{print $1/31.75 "," $2 }' |
        column -o, -s, -t -N 'Strain,Stress' >"csv/${__file}.csv"

done

exit
