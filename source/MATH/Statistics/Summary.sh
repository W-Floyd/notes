#!/bin/bash

if [ "${1}" == '-f' ]; then
    echo '--filter pandoc-include'
    exit
fi

echo '---
title: Summary
author: William Floyd
toc: true
---'

find  . -maxdepth 1 -iname '*.md' | sort -n | while read -r __line; do
echo "
!include ${__line}"
done

exit