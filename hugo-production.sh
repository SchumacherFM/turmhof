#!/bin/bash

HUGO=hugo

rm -Rf public
mkdir public
$HUGO -v --baseUrl="//www.turmhof-wehrle.de/" --cacheDir="/Users/kiri/Sites/hugo/turmhof/cache"
cp -R static/*.* public/
ln -s ../piwik public/piwik
./syncFolders-push.sh
