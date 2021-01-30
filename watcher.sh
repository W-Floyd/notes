#!/bin/bash

while inotifywait -e modify -qq -r source; do
    ./export.sh pdf
done

exit
