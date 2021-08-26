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
title: \"$(sed -e 's/\([0-9]\)/ \1/' <<<"${__name}")\"
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

    if [ "${sos_cover}" == 'true' ]; then
        echo '$$
\begin{array}{|l|l|}
\hline \multicolumn{2}{|c|} {\text { SOS }} \\'

        find . -iname '*.md' | sort -V | while read -r __file; do

            if ! grep -q 'DONTLIST' <"${__file}"; then

                __name="$(sed -e 's|^\./||' -e 's|\.md$||' <<<"${__file}")"

                __sos=''

                if grep --silent 'SOS' <"${__file}"; then
                    __sos='\textbf{X}'
                else
                    __sos='   '

                fi

                echo "\hline ${__name} & ${__sos}"'\\'
            fi

        done

        echo '\hline
\end{array}
$$

\newpage
'
    fi

    find . -iname '*.md' | sort -V | while read -r __file; do
        __prefix_problem='true'
        if grep -q ',' <<<"${__file}" || grep -qi 'Question' <<<"${__file}" || grep -qi 'Problem' <<<"${__file}" || grep -qEv '[0-9]' <<<"${__file}"; then
            __prefix_problem='false'
        fi
        if [ "${__prefix_problem}" == 'true' ]; then
            echo "# Problem $(sed -e 's|^\./||' -e 's|\.md$||' <<<"${__file}")"
        else
            echo "# $(sed -e 's|^\./||' -e 's|\.md$||' <<<"${__file}")"
        fi
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
