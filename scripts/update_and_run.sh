#!/bin/bash

# set variable for easy change

# todo: jar versioning updates
JAR_FILE="/home/ec2-user/sampleApi-0.0.1-SNAPSHOT.jar"
APP_NAME="sampleApi-0.0.1-SNAPSHOT.jar"

# stop the current running application
echo 'Stopping current running app process'
pkill -f $APP_NAME || echo "No currently running process for app"

# update the jar file
echo 'Updating jar file'
cp $JAR_FILE $APP_DIR/$APP_NAME

# start the application with the new jar file
echo 'Starting new application'
nohup javar -jar $APP_DIR/$APP_NAME 

# todo: logging
