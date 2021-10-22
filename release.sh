#!/bin/bash
latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    chmod a+x ios/ReactNativeStarter/Info.plist
    oldTag=$(git describe --tags $(git rev-list --tags --max-count=1 --skip=1 --no-walk))
    echo $oldTag
version=$(sed -n "20p" ios/ReactNativeStarter/Info.plist)
echo=$version
#Initializing two variables
a= "sed -n "20p" ios/ReactNativeStarter/Info.plist"
b= "<string>$latestTag</string>"

if [ $a == $b ]
then
	#If they are equal then print this
	echo "it is upto date"
else
    sed -i "${22}s#v[0-9]\.[0-9]\.[0-9].*#"$oldTag"</string>#" ios/ReactNativeStarter/Info.plist
    sed -i "${22}s/"$oldTag"/"$latestTag"/" ios/ReactNativeStarter/Info.plist
	git add .
	git commit -m " incrementing version"
	
fi
