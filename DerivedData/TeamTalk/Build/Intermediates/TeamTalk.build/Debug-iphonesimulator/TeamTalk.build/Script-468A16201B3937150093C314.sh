#!/bin/sh
if [ "${CONFIGURATION}" = "Release" ] || [ "${CONFIGURATION}" = "CI" ]; then

BUILD_NUMBER=`curl http://www.mogujie.com/mobile/build/increase -F "identifier=im.teamtalk.tt" -F "sign=f41b3c980d33d9d51a0a0df685b20bb9"`

/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BUILD_NUMBER" "${INFOPLIST_FILE}"
fi
