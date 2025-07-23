#!/bin/bash

TOMCAT_HOME="/usr/local/tomcat"

echo "Stopping Tomcat..."
$TOMCAT_HOME/bin/shutdown.sh

sleep 5

# Find and force-kill Tomcat process if still running
TOMCAT_PID=$(ps -ef | grep 'org.apache.catalina.startup.Bootstrap' | grep -v grep | awk '{print $2}')

if [ ! -z "$TOMCAT_PID" ]; then
    echo "Killing remaining Tomcat process: $TOMCAT_PID"
    kill -9 $TOMCAT_PID
fi

echo "Starting Tomcat..."
$TOMCAT_HOME/bin/startup.sh
