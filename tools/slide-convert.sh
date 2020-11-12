#!/bin/bash
# ./slide-convert.sh <FILE.pptx>
# Use this script to ingest HTML/image files of powerpoint presentations exported from Impress.

if [ "${#}" -lt 1 ]; then
    echo 'Provide some input!'
    exit
fi

name="$(sed -e 's/\.[^\.]*$//' <<<"${1}")"

if [ -d "${name}" ]; then
    rm -r "${name}"
fi

unoconv -vvv --doctype=presentation --format=html -e "PublishMode"=0 -e 'IsExportContentsPage=false' -e 'HiddenSlides=true' -e 'Width=800' -e 'Format=2' -e 'UseButtonSet=-1' --output="${name}/" "${1}"

prefix='img'
format='png'
escaped="$(sed -e 's/ /\\\\ /g' -e 's/&/\\&/g' <<<"${name}")"

pushd "${name}"

n="$(find . -type f | grep "${prefix}[0-9]*\.html" | wc -l)"

if [ -e '.html' ]; then
    mv '.html' 'img0.html'
fi

for i in $(seq 0 "$((n - 1))"); do
    source="${prefix}${i}.html"
    #echo "# $(pcregrep -Mo '<title>(.|\n)*?</title>' <"${source}" | tr -d '\n' | sed 's|<title>\(.*\)</title>|\1|')"

    output="$(html2md -i <"text${i}.html" | sed "s|\(${prefix}[0-9]*.${format}\)|${escaped}/\1|" | grep -v '\.html)' | sed -e "s|^# |# Slide ${i} - |")"
    if ! grep -qE '^# ' <<<"${output}"; then
        echo "# Slide $((i + 1))"
    fi
    echo "${output}"
    html2md -i <"${source}" | sed "s|\(${prefix}[0-9]*.${format}\)|${escaped}/\1|" | grep -v '\.html)'
done >"../${name}.md"

rm *.html

find . | grep -E '*.png' | parallel zopflipng --prefix

for file in zopfli_img*; do
    mv "${file}" "${file#zopfli_}"
done

popd

exit
