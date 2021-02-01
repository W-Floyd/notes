#!/bin/bash

__date() {
    date '+%Y-%m-%d %k:%M:%S'
}

__wait() {
    echo "$(__date)  WAITING"
}

./export.sh "${@}"

__wait
while inotifywait -e modify -qq -r source; do
    ./export.sh "${@}"
    __wait
done

exit
