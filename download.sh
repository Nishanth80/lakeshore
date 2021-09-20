#!/bin/bash

USER=abhinav.vashishat
APP=Developer
TEAM_APP='abhinav.vashishat/Developer'
appcenter build branches show -b master=$Build_Id
if [ "$Build_status" != "Succeeded" ]; then
for i in {$Build_id} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$Build id" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$Build_id" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$Build id" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done   
else
    Build Failed
fi
