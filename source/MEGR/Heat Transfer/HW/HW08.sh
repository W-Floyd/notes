#!/bin/bash

source '../.env.sh'

__dir="$(dirname "${0}")"
__script_name="$(basename "${0}")"
__name="$(basename "${__script_name}" '.sh')"

__date() {
    {
        grep -E "^${__name}," '../dates.csv' | sed 's/.*,//'
        date +%Y-%m-%d
    } | sort -n | head -n 1
}

pushd "${__dir}" &>/dev/null

if [ -d "./${__name}" ]; then
    pushd "./${__name}" &>/dev/null
    echo "---
title: \"$(sed -e 's/HW\([0-9]\)/HW \1/' <<<"${__name}")\"
subtitle: \"${subject}\\\\linebreak ${professor}\"
documentclass: article
date: \"$(__date)\"
author: \"William Floyd\"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{${__name}}
    \fancyfoot[RE,RO]{Pg. \thepage}
---
"
    find . -iname '*.md' | sort -V | while read -r __file; do
        echo -n "# "
        if ! [ "${hw_problem}" == 'false' ]; then
            echo -n "Problem "
        fi
        echo "$(sed -e 's|^\./||' -e 's|\.md$||' <<<"${__file}")"
        cat "${__file}" | sed 's/^#/##/'
        echo
        echo
        echo '\newpage'
        echo
    done
    popd &>/dev/null
else
    echo "No directory \"${__name}\"!"
fi

popd &>/dev/null

exit
