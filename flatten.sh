#!/bin/bash

xelatex BOCINSKY_VITAE_TEX
bibtex BOCINSKY_VITAE_TEX
xelatex BOCINSKY_VITAE_TEX
xelatex BOCINSKY_VITAE_TEX
gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Vitae.pdf BOCINSKY_VITAE_TEX.pdf

#xelatex BOCINSKY_REFS_TEX
#bibtex BOCINSKY_REFS_TEX
#xelatex BOCINSKY_REFS_TEX
#xelatex BOCINSKY_REFS_TEX
#gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_References.pdf BOCINSKY_REFS_TEX.pdf
#
#xelatex BOCINSKY_BIOSKETCH_TEX
#bibtex BOCINSKY_BIOSKETCH_TEX
#xelatex BOCINSKY_BIOSKETCH_TEX
#xelatex BOCINSKY_BIOSKETCH_TEX
#gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Biosketch.pdf BOCINSKY_BIOSKETCH_TEX.pdf
#
##xelatex BOCINSKY_COVER_LETTER_TEX
##bibtex BOCINSKY_COVER_LETTER_TEX
##xelatex BOCINSKY_COVER_LETTER_TEX
##xelatex BOCINSKY_COVER_LETTER_TEX
##gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Cover_Letter.pdf BOCINSKY_COVER_LETTER_TEX.pdf
##
#xelatex BOCINSKY_COVER_LETTER_ACADEMIA_TEX
#bibtex BOCINSKY_COVER_LETTER_ACADEMIA_TEX
#xelatex BOCINSKY_COVER_LETTER_ACADEMIA_TEX
#xelatex BOCINSKY_COVER_LETTER_ACADEMIA_TEX
#gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Cover_Letter_Academia.pdf BOCINSKY_COVER_LETTER_ACADEMIA_TEX.pdf
##
##xelatex BOCINSKY_SALARY_TEX
##bibtex BOCINSKY_SALARY_TEX
##xelatex BOCINSKY_SALARY_TEX
##xelatex BOCINSKY_SALARY_TEX
##gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Salary.pdf BOCINSKY_SALARY_TEX.pdf
#
xelatex BOCINSKY_RESUME_TEX
bibtex BOCINSKY_RESUME_TEX
xelatex BOCINSKY_RESUME_TEX
xelatex BOCINSKY_RESUME_TEX
gs -sDEVICE=pdfwrite -dNOPAUSE -dQUIET -dBATCH -dAutoRotatePages=/None -dCompatibilityLevel=1.9 -dEmbedAllFonts=true -sOutputFile=./Bocinsky_Resume.pdf BOCINSKY_RESUME_TEX.pdf

rm *.aux
rm *.log
rm *.out
rm *.bbl
rm *.blg
rm *.synctex.gz

cp ./Bocinsky_Vitae.pdf ~/git/bocinsky.github.io/Bocinsky_Vitae.pdf
cp ./Bocinsky_Resume.pdf ~/git/bocinsky.github.io/Bocinsky_Resume.pdf

cd ~/git/bocinsky.github.io/
git add .
git commit -m "Updated CV and Resume"
git push