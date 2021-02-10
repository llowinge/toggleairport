#!/bin/bash
#git@github.com:paulbhart/toggleairport.git
#originally from https://gist.github.com/albertbori/1798d88a93175b9da00b

(TMP_FOLDER="/tmp/$(date +%Y-%m-%d-%T)" && mkdir -p $TMP_FOLDER && cd $TMP_FOLDER && git clone git@github.com:snosrap/xpc_set_event_stream_handler.git && cd xpc_set_event_stream_handler/xpc_set_event_stream_handler && gcc -framework Foundation -o xpc_set_event_stream_handler main.m && cp xpc_set_event_stream_handler /usr/local/bin/)

sudo cp ./toggleAirport.sh /Library/Scripts/
sudo chmod 755 /Library/Scripts/toggleAirport.sh

sudo cp ./com.mine.toggleairport.plist /Library/LaunchAgents/
sudo chown root /Library/LaunchAgents/com.mine.toggleairport.plist
sudo chmod 644 /Library/LaunchAgents/com.mine.toggleairport.plist
launchctl load /Library/LaunchAgents/com.mine.toggleairport.plist
