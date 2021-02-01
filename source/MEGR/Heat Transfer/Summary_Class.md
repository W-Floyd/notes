!bash
~~~
echo "---
title: $(basename "${PWD}")
subtitle: Class Summary
author: William Floyd
toc: true
---"
~~~

!pp(
!bash
~~~
__ignore_list=''
if [ -e '.ignore_list' ]; then
    __ignore_list="$(cat '.ignore_list')"
fi
__files="$(find . -maxdepth 1 -iname '*.md' -not -iname '\.*' | grep -Fxv "${__ignore_list}" | sort -n)"
if ! [ -z "${__files}" ]; then
    echo "${__files}" | while read -r __line; do
        echo
        echo "${__line%.md}" | sed -e 's|^\./|# |' 
        echo
        cat "${__line}" | sed -e 's/^#/##/'
        echo
        echo '\newpage'
    done
fi
~~~
)