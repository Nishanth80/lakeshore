#!/bin/bash

USER=abhinav.vashishat
APP=Developer
TEAM_APP='abhinav.vashishat/Developer'
if [ "Status" != "Succeeded" ]; then
for i in {$BUILD ID} #downloads data from builds #1 - #10
do
   #eval appcenter build download --id "$BUILD ID" --app $TEAM_APP --type "logs"    
   eval appcenter build download --id "$BUILD ID" --app $TEAM_APP --type "build" #uncomment to download app packages
   #eval appcenter build download --id "$i" --app $TEAM_APP --type "symbols" #uncomment to download symbols
done   
else
    Build Failed
fi
