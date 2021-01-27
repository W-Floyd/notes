#!/bin/bash

source '../.env.sh'

__date() {
    {
        grep -E "^${__name}," './dates.csv' | sed 's/.*,//'
        date +%Y-%m-%d
    } | sort -n | head -n 1
}

__name="${1}"

echo "---
title: \"${__name}\"
subtitle: \"${subject}\\\\linebreak ${professor}\"
documentclass: article
date: \"$(__date)\"
author: \"William Floyd\"
include-before: |
    \newpage
header-includes: |
    \usepackage{fancyhdr}
    \pagestyle{fancy}
    \fancyfoot[LO,LE]{William Floyd}
    \fancyfoot[CE,CO]{${__name}}
    \fancyfoot[RE,RO]{Pg. \thepage}
---"


exit