#!/bin/bash

SOURCE="../logs"
DESTINATION="../backup"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

echo "Starting backup..."

tar -czf $DESTINATION/$BACKUP_NAME $SOURCE

echo "Backup completed: $BACKUP_NAME"
