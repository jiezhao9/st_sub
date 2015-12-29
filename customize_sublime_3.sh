#!/bin/bash
set -x #echo on

SUBL_PATH="$APPDATA/Sublime Text 3"
PACKAGE_PATH="$SUBL_PATH/Installed Packages"

SETTING_FILE="Package Control.sublime-settings"
SETTING_PATH="$SUBL_PATH/Packages/User"

mkdir -p "$PACKAGE_PATH"
cd "$PACKAGE_PATH"
curl -O "https://packagecontrol.io/Package Control.sublime-package"

cd -
cp "$SETTING_FILE" "$SETTING_PATH"