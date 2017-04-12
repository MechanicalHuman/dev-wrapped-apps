#!/bin/bash

rm -rf ./out
mkdir -p ./out

nativefier --name Azure --icon ./icons/azure.png --electron-version 1.6.6 --inject ./inject/disablefocus.css --single-instance --disable-dev-tools --disable-context-menu https://portal.azure.com
nativefier --name Trello --electron-version 1.6.6 --inject ./inject/disablefocus.css --single-instance --disable-dev-tools --disable-context-menu https://trello.com
nativefier --name GistBox --icon ./icons/github.png --electron-version 1.6.6 --single-instance --disable-dev-tools --disable-context-menu https://app.gistboxapp.com
nativefier --name DevDocs --icon ./icons/devdocs.png --electron-version 1.6.6 --single-instance --disable-dev-tools --disable-context-menu http://devdocs.io
nativefier --name RegEx --icon ./icons/regex101.png --electron-version 1.6.6 --single-instance --disable-dev-tools --disable-context-menu https://regex101.com
nativefier --name 'Facebook Messenger' --icon ./icons/messenger.icns --counter --electron-version 1.6.6 --inject ./inject/disablefocus.css --disable-dev-tools --single-instance --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/603.2.1 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.1' https://www.messenger.com