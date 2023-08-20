#!/bin/bash
APP_LOGS_DIR=./app-logs
DATE=$(date +%F)
LOGFILE=/tmp/$SCRIPTNAME-$DATE.log
FILES_TO_DELETE= $(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)
echo "$FILES_TO_DELETE"


