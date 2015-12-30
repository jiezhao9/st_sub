#!/bin/bash
set -x #echo on

OS=$(uname)

if [ $OS == "Linux" ]; then
    APPDATA="$HOME/.config"
    SUBL_PATH="$APPDATA/sublime-text-3"
else
    SUBL_PATH="$APPDATA/Sublime Text 3"
fi

PACKAGE_PATH="$SUBL_PATH/Installed Packages"
SETTING_FILE="./settings/*.sublime-settings"
SETTING_PATH="$SUBL_PATH/Packages/User"

mkdir -p "$PACKAGE_PATH"
cd "$PACKAGE_PATH"
curl -O "https://packagecontrol.io/Package Control.sublime-package"

cd -
mkdir -p "$SETTING_PATH"
cp $SETTING_FILE "$SETTING_PATH"
