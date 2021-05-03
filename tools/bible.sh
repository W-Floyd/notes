#!/bin/bash

__script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

rawurlencode() {
    local string="${1}"
    local strlen=${#string}
    local encoded=""
    local pos c o

    for ((pos = 0; pos < strlen; pos++)); do
        c=${string:$pos:1}
        case "$c" in
        [-_.~a-zA-Z0-9]) o="${c}" ;;
        *) printf -v o '%%%02x' "'$c" ;;
        esac
        encoded+="${o}"
    done
    echo "${encoded}"  # You can either set a return variable (FASTER)
    REPLY="${encoded}" #+or echo the result (EASIER)... or both... :p
}

__input="$(sed -e 's/ /+/g' <<<"${@}")"

__api_key='2a8bd246094b42b9a27440056aed74fd9cf6ca47'

__response="$(
    "${__script_dir}/bashcache.sh" curl \
        -H "Authorization: Token ${__api_key}" \
        -e '' "https://api.esv.org/v3/passage/text/?include-passage-references=false&include-short-copyright=false&include-verse-numbers=false&include-headings=false&include-footnotes=false&q=${__input}" -s
)"

__parsed="$(
    echo "${__response}" | jq -r '.passages[]' | sed -e 's/^ *//'
)"

echo "\"${__parsed}\" **\mbox{(${@} - ESV)}**"

exit
