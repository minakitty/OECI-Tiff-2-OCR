# OECI Tiff 2 OCR
 
The problem: OECI (Oregon eCourt Case Information) provides a lot of case filings in hand scanned multi-page TIFF files, which are not easily readable for the average user. And for those who need screen readers for accessibility, they're completely unusable.

Solution: Script to convert multi-page TIFF files to PDF files, with a matching OCR scan in TXT format for accessibility.

Platform: Linux (tested on Ubuntu 20.04.2 LTS)

Prerequisites: imagemagick and tesseract-ocr

Syntax: tiff2ocr <inputfile.tif> <outputname>

Example: tiff2ocr in.tif out

	inputfile.tif requires full filename (including extension)
	outputname does not get an extension (output from example will be out.pdf and out.txt)

Known Issues:

	OCR'd TXT files are not proofread. This is just the nature of OCR.