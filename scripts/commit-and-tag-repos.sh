#!/usr/bin/env bash

set -e

P=$(dirname $0)

source $P/VERSIONS
source ENV

# add everything and commit it, then tag it
pushd build 2> /dev/null

# web app
pushd montclair-${REPO} 2> /dev/null
git add .
git commit -m "Building version $OUTPUT_VERSION"
git tag $OUTPUT_VERSION && git push && git push origin refs/tags/$OUTPUT_VERSION
popd

# ios
if [ $HAS_IOS = 1 ]
then
    pushd montclair-${REPO}-pwa-ios 2> /dev/null
    git add .
    git commit -m "Building version $OUTPUT_IOS_VERSION"
    git tag $OUTPUT_IOS_VERSION && git push && git push origin refs/tags/$OUTPUT_IOS_VERSION
    popd
fi

if [ $HAS_ANDROID = 1 ]
then
    pushd montclair-${REPO}-pwa-android 2> /dev/null
    git add .
    git commit -m "Building version $OUTPUT_ANDROID_VERSION"
    git tag $OUTPUT_ANDROID_VERSION && git push && git push origin refs/tags/$OUTPUT_ANDROID_VERSION
    popd
fi
popd
