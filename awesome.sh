#!/bin/bash

TEXT=$(cat s.txt)

for each in $TEXT;
  do
    URL=$(echo $each | cut -c9-)
    mkdir -p downloads/
    wget -q -P downloads/ $URL
    echo "Successfully scraped $URL"
  done
