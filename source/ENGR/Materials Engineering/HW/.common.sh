#!/bin/bash

__dir="$(dirname "${0}")"
__script_name="$(basename "${0}")"
__name="$(basename "${__script_name}" '.sh')"

if [ "${1}" == '-f' ]; then
    echo '--lua-filter %lua_dir%/pagebreak/pagebreak.lua'
    # echo '--metadata title="'${__name}'"'
    exit
fi

pushd "${__dir}" &>/dev/null

if [ -d "./${__name}" ]; then
    pushd "./${__name}" &>/dev/null
    echo "---
title: \"${__name}\"
subtitle: \"Materials Engineering (ENGR2313-01)\\\\linebreak Prof. Olson\"
documentclass: scrartcl
date: \"$(date +%Y-%m-%d)\"
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
        echo "# Problem $(sed -e 's|^\./||' -e 's|\.md$||' <<<"${__file}")"
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
