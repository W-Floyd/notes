#!/bin/bash

__file="${1}"
__output="${2}"

if [ -z "${2}" ]; then
    __output="${__file}.md"
fi

if ! [ -e "${__file}" ]; then
    echo 'File does not exist!'
    exit
fi

cat "${__file}" | sed \
    -e 's/\\begin{Maple Normal}//' \
    -e 's/\\end{Maple Normal}//' \
    -e 's/\\DefineParaStyle.*//' \
    -e 's/\\DefineCharStyle.*//' \
    -e 's/\\documentclass.*//' \
    -e 's/\\usepackage.*//' \
    -e 's/\\mapleinline.*//' \
    -e 's/\\mapleinput//' \
    -e 's/\\begin{document}//' \
    -e 's/\\end{document}//' \
    -e 's/\\begin{maplelatex}//' \
    -e 's/\\end{maplelatex}//' \
    -e 's/%.*//' \
    -e 's/\\lstset.*//' \
    -e 's/\\pagestyle.*//' \
    -e 's/\\displaystyle//' \
    -e 's/\\colon  \$/\$/' \
    -e 's/; \$/\$/' \
    -e 's/\\mathit//' \
    -e 's/moverset/overset/' \
    -e 's/{\$/\$/' \
    -e 's/\$}/\$/' \
    -e 's/\$ */\$/' \
    -e 's/ *\$/\$/' \
    -e 's/ \$/\$/g' \
    >"${__output}"

exit
