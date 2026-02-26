#!/bin/bash

# Directory containing logs
LOG_DIR="../logs"

# Days threshold
DAYS=7

echo "Starting log cleanup..."

# Find and delete old log files
find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Old log files deleted successfully."

echo "Cleanup completed."
