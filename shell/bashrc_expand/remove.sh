iRA_CNT=$#
TRASH_DIR="~/.trash"

for i in $*; do
    STAMP=`date +%s`
    fileName=`basename $i`
    echo "mv $i to trash"
    mv $i $TRASH_DIR/$fileName.$STAMP
done
