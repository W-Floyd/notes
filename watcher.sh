#!/bin/bash

export IGNORE_SUMMARY='true'

__date() {
    date '+%Y-%m-%d %k:%M:%S'
}

__wait() {
    echo "$(__date)  WAITING"
}

./export.sh "${@}"

if ! [ -d './export_sync/' ]; then
    mkdir './export_sync/'
fi

rsync --delete -au './export/' './export_sync/'

__wait
while inotifywait -e modify -qq -r source; do
    sleep 0.01s
    while [ -e '.hold' ]; do
        sleep 0.05s
    done
    ./export.sh "${@}"
    rsync --delete -au './export/' './export_sync/'
    __wait
done

exit
