#!bin/bash
#sleep 25m
APPCENTER=Credentials('500')
LatestbuildNumber=$(curl -X GET "https://api.appcenter.ms/v0.1/apps/nishanth.g-successive.tech/Lakeshoredemo/branches/master/builds" -H  "accept: application/json" -H  "X-API-Token: $APPCENTER" |jq -r '.[0].buildNumber') 
echo $LatestbuildNumber
appcenter build download --app nishanth.g-successive.tech/Lakeshoredemo --type build --id "3"
