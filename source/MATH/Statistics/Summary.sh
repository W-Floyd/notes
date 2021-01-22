#!/bin/bash

echo '---
title: Summary
author: William Floyd
toc: true
---'

find . -maxdepth 1 -iname '*.md' | sort -n | while read -r __line; do
    echo "
!include(${__line})"
done

exit
