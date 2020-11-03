#!/bin/bash
# ./slide-convert.sh <DIR_NAME>
# Use this script to ingest HTML/image files of powerpoint presentations exported from Impress.

prefix='img'
escaped="$(sed 's/ /\\\\ /g' <<< "${1}")"

pushd "${1}"

n="$(find . -type f | grep "${prefix}[0-9]*\.html" | wc -l)"

for i in $(seq 0 "$[n-1]"); do
    source="${prefix}${i}.html"
    echo "# $(pcregrep -Mo '<title>(.|\n)*?</title>' < "${source}" | tr -d '\n' | sed 's|<title>\(.*\)</title>|\1|')"
    html2md -i  < "${source}" | sed "s|\(img[0-9]*.png\)|${escaped}/\1|" | grep -v '\.html)'
done > "../${1}.md"

popd