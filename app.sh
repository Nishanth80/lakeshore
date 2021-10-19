#!/bin/bash
    
    

    latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    chmod a+x ios/ReactNativeStarter/Info.plist
    oldTag=$(git describe --tags $(git rev-list --tags --max-count=1 --skip=1 --no-walk))
    echo $oldTag
    
    sed -i "20s/v0.0..../"$oldTag"/" ios/ReactNativeStarter/Info.plist
    
    sed -i "${20}s/"$oldTag"/"$latestTag"/" ios/ReactNativeStarter/Info.plist
    sed -i '20s/[v]//' ios/ReactNativeStarter/Info.plist
     
      
  
