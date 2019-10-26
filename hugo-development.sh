#!/bin/bash
HUGO=hugo

rm -Rf public
mkdir public
$HUGO server -w -v --baseUrl="localhost" --cacheDir="/Users/kiri/Sites/hugo/turmhof/cache"
