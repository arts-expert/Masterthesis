#!/usr/bin/env sh

mkdir -p tmp

for i in *Abbildungen.latex
do
    pandoc "$i" -o "tmp/$i.md"
done
pandoc --defaults epub-Kapitel.yaml --defaults shared-defaults.yaml -o out.epub
