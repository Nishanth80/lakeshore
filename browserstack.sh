#!/bin/bash
curl -u "nishanthgadupuri_MCJB6V:RbNfAofyzTkvHcYDro5G" \
-X POST "https://api-cloud.browserstack.com/app-automate/upload" \
-F "file=/var/lib/jenkins/workspace/lakeshoredemo/*.xcarchive"
