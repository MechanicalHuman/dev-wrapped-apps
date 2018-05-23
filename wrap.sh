#!/bin/bash

DEST="./apps"
ARCH="-darwin-x64"

function wrap_app(){

    if [ "$3" = "--icon" ] && [ ! -z "$4" ]; then
        nativefier --name "$1" --single-instance --disable-dev-tools --disable-context-menu --full-screen --inject ./inject/disablefocus.css --icon "$4" "$2" "$DEST"
    else
        nativefier --name "$1" --single-instance --disable-dev-tools --disable-context-menu --full-screen --inject ./inject/disablefocus.css "$2" "$DEST"
    fi

    mkdir -p "$DEST"
    rm -rf "/Applications/$1.app"
    mv -f -v "$DEST/$1$ARCH/$1.app" "/Applications/$1.app"
    open -a "/Applications/$1.app"
    rm -rf "$DEST"
}

# wrap_app 'Asana' https://app.asana.com
# wrap_app 'Amazon Web Services' https://console.aws.amazon.com --icon aws.png
# wrap_app 'Azure' https://portal.azure.com --icon azure.png
# wrap_app 'DevDocs'  https://devdocs.io --icon devdocs.png
# wrap_app 'RegEx' https://regex101.com --icon regex101.png
# wrap_app "Facebook Messenger" https://www.messenger.com --icon messenger.icns
# wrap_app 'Keymetrics' https://app.keymetrics.io --icon keymetrics.png

