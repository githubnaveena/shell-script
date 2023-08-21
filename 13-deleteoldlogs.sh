#!/bin/bash
APP_LOGS_DIR=/home/centos/deletelogs
echo "$APP_LOGS_DIR"
# DATE=$(date +%F)
# SCRIPT_NAME=$0
# LOG_DIR=/home/centos/shell-script-logs
# LOGFILE=LOG_DIR/$SCRIPT_NAME-$DATE.log
 FILES_TO_DELETE= $(find $APP_LOGS_DIR -name "*.log" -type f -mtime +18)
 echo $FILES_TO_DELETE


