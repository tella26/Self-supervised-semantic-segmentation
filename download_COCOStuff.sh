#!/bin/bash

set -e

DATADIR="./data"
ZIPFILE="$DATADIR/COCO-Stuff-2.2.zip"
URL="http://images.cocodataset.org/zips/COCO-Stuff-2.2.zip"

mkdir -p "$DATADIR"
curl -o "$ZIPFILE" "$URL"
unzip "$ZIPFILE" -d "$DATADIR"
rm "$ZIPFILE"
echo "COCO-Stuff dataset downloaded."
