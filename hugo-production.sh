#!/bin/bash

HUGO=./hugo_snapshot_linux_amd64

if [ "$(uname)" == "Darwin" ]; then
    HUGO=./hugo_snapshot_darwin_amd64
fi

rm -Rf public
mkdir public
$HUGO -v --baseUrl="//turmhof-wehrle.de" --cacheDir="./cache"
cp -R static/robots.txt public/
./syncFolders-push.sh
# git push
