---
author: William Floyd
date: 2021-05-03
fontsize: 11pt
header-includes: |
  \usepackage{helvet}
  \renewcommand{\familydefault}{\sfdefault}
  \usepackage[margin=1in]{geometry}
  \usepackage{fancyhdr}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \fancyfoot[LO,LE]{William Floyd}
  \fancyfoot[RE,RO]{Pg. \thepage}
  \fancyfoot[CE,CO]{}
  \fancyhead[RE,RO]{}
  \fancyhead[LE,LO]{}
  \fancyhead[CE,CO]{}
  \usepackage{setspace}
include-before: |
  \newpage
title: "Leadership Bible Verses"
subtitle: "A Christian Approach to Engineering Leadership
  (ENGR6103)\\linebreak Dr. Anson\\linebreak"
---

!define(BIBLE_LIST)(!pp(
!bash
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
sed -e 's/^ *//' -e '/^$/d' -e 's/\(.*\)/bible(\1)/' -e 's/^/!/' -e 's/$/\n/' <<< '
!1'
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
))

# My responsibility to God

!BIBLE_LIST(
    1 John 1:9
    Matthew 6:24
    Proverbs 3:5-6, 3:9
    Romans 8:28
    Psalm 37:5
)

# My responsibility to myself

!BIBLE_LIST(
    2 Timothy 1:7
    Proverbs 11:14
    Ecclesiastes 9:10
    James 4:17
    James 1:5
    Proverbs 24:10
)

# My responsibility to others

!BIBLE_LIST(
    Romans 14:1
    1 Thessalonians 5:14
    1 Peter 4:10
    Matthew 20:26
    1 Corinthians 16:14
)

## Those over me

!BIBLE_LIST(
    Romans 13:1-2
    Hebrews 13:7
    Matthew 23:11
)

## Those under me

!BIBLE_LIST(
    Philippians 2:3
    1 Peter 5:2-3
    1 Timothy 3:2
    Acts 20:28
    Proverbs 3:27
)

# My responsibility to my work

!BIBLE_LIST(
    Colossians 3:23
    Proverbs 12:24
    John 6:27
    Proverbs 14:23
    Psalm 37:5
    2 Timothy 3:16-17
    1 Thessalonians 4:11
)