#!/bin/bash

#This script will remove the Logentries mac agent

echo 'Cleaning up Logentries configuration...'
sudo le clean
echo 'Removing Logentries Daemon...'
sudo launchctl unload /Library/LaunchDaemons/com.logentries.agent.plist
sudo rm -r /Library/LaunchDaemons/com.logentries.agent.plist
sudo rm -r /usr/bin/le
echo 'Removal Complete.'