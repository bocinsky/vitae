#!/bin/bash

file=$1

rm $file.pdf
pandoc \
    $file \
    -o ./coverletter.tex \
    --from markdown \
	--template cltemplate.tex \
    --citeproc \
    --natbib
    
xelatex ./coverletter
bibtex ./coverletter
xelatex ./coverletter
xelatex ./coverletter

rm coverletter.aux
rm coverletter.log
rm coverletter.out
rm coverletter.bbl
rm coverletter.blg
rm coverletter.tex

gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./coverletter.new.pdf ./coverletter.pdf

rm ./coverletter.pdf
mv ./coverletter.new.pdf ./coverletter.pdf

echo Done
