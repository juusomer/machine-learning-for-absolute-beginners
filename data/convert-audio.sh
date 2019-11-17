#!/bin/bash

set -e

for f in {cats,dogs,test}/*.m4a; do
    yes | avconv -i "$f" -ac 1 "${f/%m4a/wav}";
done