#!/usr/bin/env bash
#
set -e

P=$(dirname $0)

source $P/VERSIONS

# check out the transmogrifier
rm -fr transmogrifier
git clone -b ${TRANSMOGRIFIER_VERSION} https://github.com/line72/montclair-transmogrifier.git transmogrifier

# Genreate the ENV file
./transmogrifier-steamboat --env
source ENV

# check out everything
rm -fr $BUILD_DIR; mkdir -p $BUILD_DIR
pushd $BUILD_DIR 2> /dev/null

# 1. checkout the base version
# 2. the whitelabel version
# 3. sync the base to the whitelabel

# Web version
git clone --depth 1 -b $VERSION https://github.com/line72/montclair.git montclair
git clone --depth 1 https://github.com/line72/montclair-${REPO}.git montclair-${REPO}
rsync -a --delete --exclude='- .git/' montclair/ montclair-${REPO}/

if [ $HAS_IOS = 1 ]
then
    git clone --depth 1 -b $IOS_VERSION https://github.com/line72/montclair-pwa-ios.git montclair-pwa-ios
    git clone --depth 1 https://github.com/line72/montclair-${REPO}-pwa-ios.git montclair-${REPO}-pwa-ios
    rsync -a --delete --exclude='- .git/' montclair-pwa-ios/ montclair-${REPO}-pwa-ios/
fi

if [ $HAS_ANDROID = 1 ]
then
    git clone --depth 1 -b $ANDROID_VERSION https://github.com/line72/montclair-pwa-android.git montclair-pwa-android
    git clone --depth 1 https://github.com/line72/montclair-${REPO}-pwa-android.git montclair-${REPO}-pwa-android
    rsync -a --delete --exclude='- .git/' montclair-pwa-android/ montclair-${REPO}-pwa-android/
fi

popd 
