#!/bin/sh
react-native run-ios
username=$(whoami)
cp -R /Users/"$username"/Library/Developer/Xcode/DerivedData/*RNMeals*/Build/Products/Debug-iphonesimulator/RNMeals.app ./ios/build/Build/Products/Debug-iphonesimulator/
npm run test:ios