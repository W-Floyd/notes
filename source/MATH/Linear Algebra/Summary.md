---
title: Linear Algebra
subtitle: Notes Summary
author: William Floyd
toc: true
---

!bash
~~~
find . -maxdepth 1 -iname '*.md' -not -name 'Summary.md' | sort -n | while read -r __line; do
    echo
    echo "${__line%.md}" | sed -e 's|^\./|# |' 
    echo
    cat "${__line}" | sed -e 's/^#/##/'

    echo '\newpage'
done
~~~
