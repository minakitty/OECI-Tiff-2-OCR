#!/bin/bash

#TIFF 2 OCR
#2021 Raindrop Works (https://raindrop.works) Heather-Lynne Van Wilde
#Released under GNU GPLv3

echo "(1/4) - Prep"
convert "$1" single%d.png
echo "(2/4) - PDF Generation"
convert single*.png $2.pdf
echo "(3/4) - OCR Scanning - This may take some time"
for i in single?.png; do tesseract "$i" "text-$i" -l eng; done
cat text-single* > $2.txt
echo "(4/4) - Cleanup"
rm "$1" && rm single* && rm text-single*
