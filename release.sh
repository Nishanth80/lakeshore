#!/bin/bash
sed -i '20s/.\{9\}/&v/' ios/ReactNativeStarter/Info.plist
latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    chmod a+x ios/ReactNativeStarter/Info.plist
    oldTag=$(git describe --tags $(git rev-list --tags --max-count=1 --skip=1 --no-walk))
    echo $oldTag
    
version=$(sed -n '20s/[^0-9]*\(\([0-9]\.\)\{0,4\}[0-9][0-9][^.]\).*/\1/p' ios/ReactNativeStarter/Info.plist)
echo=$version
#Initializing two variables
a=$version
b=$latestTag 
echo $a
echo $b

if [ $a == $b ]
then
	#If they are equal then print this
	echo "it is upto date"
else
    sed -i "${20}s#v[0-9]\.[0-9]\.[0-9].*#"$oldTag"</string>#" ios/ReactNativeStarter/Info.plist
    sed -i "${20}s/"$oldTag"/"$latestTag"/" ios/ReactNativeStarter/Info.plist
    sed -i '20s/[v]//' ios/ReactNativeStarter/Info.plist
	git add .
	git commit -m " incrementing version"
	
fi
