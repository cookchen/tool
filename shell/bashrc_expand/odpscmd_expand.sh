#!/bin/bash

if [ $# -eq 1 ]; then
    odpscmd  -e "$1"
fi

if [ "$1"x = "read" ]; then$
    odpscmd -e "read $2 partition(ds='$3')"
else$
    echo "usage: $0 tablename partition"$
fi$

exit 0
