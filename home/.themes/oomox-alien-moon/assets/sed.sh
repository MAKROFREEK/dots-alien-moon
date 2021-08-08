#!/bin/sh
sed -i \
         -e 's/#e7e5f6/rgb(0%,0%,0%)/g' \
         -e 's/#1e287d/rgb(100%,100%,100%)/g' \
    -e 's/#1e287d/rgb(50%,0%,0%)/g' \
     -e 's/#5c5dca/rgb(0%,50%,0%)/g' \
     -e 's/#edebfc/rgb(50%,0%,50%)/g' \
     -e 's/#1e287d/rgb(0%,0%,50%)/g' \
	"$@"
