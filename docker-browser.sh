#!/bin/sh

docker run -d --add-host application:`ifconfig \`netstat -rn|egrep '^(default|0.0.0.0)'| grep -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'|awk '{print $NF}'\`|grep "inet "|grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'| head -1` -p 4444:4444 selenium/standalone-chrome:3.0.1-germanium
