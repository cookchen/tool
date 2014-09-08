#!/bin/bash

set -x
if [ $# -nq 2 ]; then
    echo "usage: $0 put|get fileName";
fi

if [ "$1"x = "putx" ]; then
    osscmd put $2 oss://061996/$2
elif [ "$1"x = "getx" ]; then
    osscmd get oss://061996/$2 $2
elif [ "$1"x = "putdirx" ]; then
    osscmd  uploadfromdir $2 oss://061996/$2
elif [ "$1"x = "getdirx" ]; then
    osscmd  downloadtodir oss://061996/$2 $2 --replace=false
else
    echo "usage: $0 put|get|getdir|putdir fileName|dirname"
fi

exit 0
