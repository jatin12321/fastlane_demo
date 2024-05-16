#!/bin/bash

echo "-----Rename APK script started........"

cd ../..

# shellcheck disable=SC2164
cd ./build/app/outputs/flutter-apk/

mv app-release.apk "$APP_APK_NAME.apk"
echo "-------Rename APK script END........"

