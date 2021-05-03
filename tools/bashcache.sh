#!/bin/bash

if read -t 0; then
    __pipe="$(cat)"
else
    __pipe=''
fi

__cache_location="${HOME}/.cache/bashcache"

if ! [ -d "${__cache_location}" ]; then
    mkdir "${__cache_location}"
fi

__hash="$(md5sum <<<"${@}|${__pipe}" | sed -e 's/ .*//')"

__cache_file="${__cache_location}/${__hash}"

if [ -e "${__cache_file}" ]; then

    cat "${__cache_file}"

else

    if [ -z "${__pipe}" ]; then
        "${@}" | tee "${__cache_file}"
    else
        "${@}" <<<"${__pipe}" | tee "${__cache_file}"
    fi

fi

exit
