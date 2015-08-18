#!/bin/sh
export SYNCTO=share

while true
do
    rsync -av --delete --stats "$RSYNC_USERNAME@$RSYNC_SERVER::$RSYNC_SHARE/" "$SYNCTO"
    aws s3 sync "$SYNCTO/" s3://wfrmls-rsync --delete
    echo "FINISHED RUN AT $(date). SLEEPING FOR AN HOUR"
    sleep 1h
done
