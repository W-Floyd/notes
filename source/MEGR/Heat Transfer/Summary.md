---
toc: true
---

!bash
~~~
find . -iname '*.md' -not -name 'Summary.md' | while read -r __line; do
    echo "${__line%.md}" | sed -e 's|^\./|# |' 
    echo
    cat "${__line}" | sed -e 's/^#/##/'
done
~~~