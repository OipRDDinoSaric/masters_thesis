#!/bin/bash

pdflatex.exe -synctex=1 --shell-escape --output-directory=build -halt-on-error masters_thesis.tex
cd build
bibtex.exe masters_thesis.aux
cd ..
pdflatex.exe -synctex=1 --shell-escape --output-directory=build -halt-on-error masters_thesis.tex
pdflatex.exe -synctex=1 --shell-escape --output-directory=build -halt-on-error masters_thesis.tex
cp build/masters_thesis.pdf ..