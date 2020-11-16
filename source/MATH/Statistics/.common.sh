#!/bin/bash

__dir="$(dirname "${0}")"
__script_name="$(basename "${0}")"
__name="$(basename "${__script_name}" '.sh')"

if [ "${1}" == '-f' ]; then
    echo '--lua-filter %lua_dir_custom%/dot.lua'
    exit
fi

pushd "${__dir}" &>/dev/null

cat "./.${__name}.md"

popd &>/dev/null

exit
