#!bin/bash
LatestbuildNumber=$(curl -X GET "https://api.appcenter.ms/v0.1/apps/nishanth.g-successive.tech/Lakeshoredemo/branches/master/builds" -H  "accept: application/json" -H  "X-API-Token: 89c17c2c10ff3f78ca7da00248eec1da0e80cc54" |jq -r '.[0].buildNumber') 
#sleep 25m
echo $LatestbuildNumber
appcenter build download --app nishanth.g-successive.tech/Lakeshoredemo --type build --id "3"
