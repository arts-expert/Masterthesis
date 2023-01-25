#!/usr/bin/env sh

mkdir -p tmp

pandoc Eigenständigkeitserklärung.md -o tmp/Eigenständigkeitserklärung.latex
pandoc --defaults latex-Kapitel.yaml --defaults shared-defaults.yaml \
--defaults latex-defaults.yaml
sed -e 's+Datenbank+}{Datenbank+g' -e 's+^\\caption{+\\mycaption{+g' out.latex \
> tmp/out.sed.latex

pdflatex -output-directory tmp tmp/out.sed.latex -interaction=nonstopmode -shell-escape
pdflatex -output-directory tmp tmp/out.sed.latex -interaction=nonstopmode -shell-escape
pdflatex -output-directory tmp tmp/out.sed.latex -interaction=nonstopmode -shell-escape
pdflatex -output-directory tmp tmp/out.sed.latex -interaction=nonstopmode -shell-escape

mv tmp/out.sed.pdf out.pdf
