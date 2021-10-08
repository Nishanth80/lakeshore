#!/usr/bin/env bash

    latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    chmod a+x /var/lib/jenkins/workspace/Release/ios/ReactNativeStarter/Info.plist
    sed -i "${20}s/1.0/"$latestTag"-qa/" var/lib/jenkins/workspace/Release/ios/ReactNativeStarter/Info.plist
    git push https://github.com/Nishanth80/lakeshore.git 
