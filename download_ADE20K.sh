#!/bin/bash

set -e

DATADIR="./data"
ZIPFILE="$DATADIR/ADEChallengeData2016.zip"
URL="http://data.csail.mit.edu/places/ADEchallenge/ADEChallengeData2016.zip"

mkdir -p "$DATADIR"
curl -o "$ZIPFILE" "$URL"
unzip "$ZIPFILE" -d "$DATADIR"
rm "$ZIPFILE"
echo "Dataset downloaded."
