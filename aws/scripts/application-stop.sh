#!/bin/bash
set -x

# System control will return either "active" or "inactive".
tomcat_running=$(systemctl is-active tomcat)
if [ "$tomcat_running" == "active" ]; then
    sudo /usr/local/tomcat9/bin/shutdown.sh
fi