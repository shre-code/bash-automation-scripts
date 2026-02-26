#!/bin/bash

LOG_FILE="../logs/backup.log"
SOURCE="../logs"
DESTINATION="../backup"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

echo "[$TIMESTAMP] Backup started" >> $LOG_FILE

if tar -czf $DESTINATION/$BACKUP_NAME $SOURCE
then
    echo "[$TIMESTAMP] Backup successful: $BACKUP_NAME" >> $LOG_FILE
else
    echo "[$TIMESTAMP] Backup failed" >> $LOG_FILE
fi
