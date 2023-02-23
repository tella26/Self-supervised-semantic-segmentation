#!/bin/bash

set -e

DATADIR="./data"
FILENAME="$DATADIR/VOCtrainval_11-May-2012.tar"
URL="http://host.robots.ox.ac.uk/pascal/VOC/voc2012/VOCtrainval_11-May-2012.tar"

mkdir -p "$DATADIR"
curl "$URL" -o "$FILENAME"
tar -xf "$FILENAME" -C "$DATADIR"
echo "PASCAL VOC 2012 dataset downloaded."
