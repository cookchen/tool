#!/bin/bash

source ~/.bashrc

set -x

if [ "$1"x = "readx" ]
then
    odpscmd -e "read $2 partition(ds='$3')"
else
    odpscmd -e "$*"
fi

exit 0
