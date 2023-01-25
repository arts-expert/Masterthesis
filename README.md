# Luisas Hausarbeit in Markdown

[![Generate PDF and ePUB](https://github.com/arts-expert/Hausarbeit-Vanitas/actions/workflows/pandoc.yml/badge.svg)](https://github.com/arts-expert/Hausarbeit-Vanitas/actions/workflows/pandoc.yml)
[![super-linter](https://github.com/arts-expert/Hausarbeit-Vanitas/actions/workflows/super-linter.yaml/badge.svg)](https://github.com/arts-expert/Hausarbeit-Vanitas/actions/workflows/super-linter.yaml)
![badge](https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/arts-expert/dec8c9ee77db806470e2b97ea55a9bad/raw/d8340d26b89924100f1ee4827f1580dde0474f4c/word_count.json)

Mein Schatz, ich habe deine Hausarbeit mal in ein Format Namens _Markdown_
konvertiert. Das ist eine simple Markup-Sprache. Markdown wird in reine
Textdateien geschrieben und Formatierungen werden mithilfe von Zeichen
definiert.

Schau dir mal die auf `.md` endenden Dateien an. Kannst du erkennen, wie
Überschriften, Fußnoten und Referenzen auf Abbildungen definiert werden? In so
einem Format könntest du deine zukünftigen Arbeiten schreiben.

## Struktur

Mit folgenden Dateien wirst du arbeiten

* `*.md`: der Text der Arbeit, eine Datei pro Kapitel (`README.md` ausgenommen)
* `Kapitel.yaml`: definiert die Reihenfolge der `*.md` Dateien
* `Abbildungen/`: enthält sämtliche Abbildungen
* `Literatur.yaml`: die Literaturdatenbank
* `latex-format.yaml`: definiert einige Formatierungen für das generierte PDF
* `Metadaten.yaml`: definiert Metadaten z.B. für das Titelblatt
* `out.pdf` und `out.epub`: die generierten Dokumente

Alle anderen Dateien kannst du erstmal ignorieren.

## yaml Dateien

FIXME: add description

## PDF und ePUB generieren

* VS Code: `F1`, dann `Tasks: Run Task` dann `Generate <...>`
* Terminal:

  ```bash
  # genereate PDF
  ./generate-pdf.sh
  # generate ePUB
  ./generate-epub.sh
  # convert bibtex citation data to yaml
  pandoc file.bibtex --standalone --from bibtex --to markdown
  # check yaml code style
  yamllint *.yaml
  ```

* GitHub hat eine Action, welche die Dokumente bei jedem Push generiert

## Anforderungen

* [ ] Check Latex logs
* [x] Fix Datenbank errors
* [x] "Datenbank" ersetzen für Bücher
* [x] Rede in Literatur
* [x] Lexikon in Literatur
* [x] Literatur Magazin
* [ ] Alle Einträge in Literatur prüfen
* [ ] Whitespace bei S.xx
* [x] Punkt nach S.xx
* [x] Seitenzahlen beginnen bei Einleitung
* [ ] Deckblatt
  * [x] HBK Logo
  * [x] author, date und publishers in derselben Schriftgröße wie titlehead
  * [x] größerer Abstand zwischen title und subtitle
* [x] Zeilenabstand Überschriften kleiner
* [x] Zeilenabstand im Text fixen
* [x] notes-after-punctuation
* [x] Sonderzeichen
  * Nur Akzente auf "a, e und u" können über die Tastatur erzeugt werden
  * "c" mit Akzent hingegen muss auf anderem Wege erzeugt werden: `F1`, `Insert
    Unicode: Insert from Favorites`
* [x] alle Metadaten in eine Datei
* [x] modifizierbarer Zeilenabstand im toc
* Abbildungen
  * Abbildungsverzeichnis enthält zusätzlich den Namen der Datenbank
    * dafür müssten Abbildungen in Latex definiert werden
    * epub könnte dann keine Abbildungen enthalten
    * pandocs latex writer kann nur captions der Form \caption{}, nicht
      \caption[]{} -> [x] mögliche Lösung: pandoc generiert Latex; sed generiert
      \caption[]{}; pdflatex generiert PDF
* [x] place figures in text
  * kein Problem; Bilder Definitionen können beliebig platziert werden
* [x] Citation: find/create csl style that matches Lu's needs -> modified
  __citation-compass-apa-note__
  1) Fußnoten *und* Literaturverzeichnis
  2) Fußnote für erstes Zitat einer Quelle enthält auführliche Quellenangabe,
     Fußnoten weiterer Zitate derselben Quelle enthalten Abkürzung
  3) Literaturverzeichnis ähnlich APA Stil
  4) Fußnoten ähnlich APA Stil
  5) Seitenangabe
  6) Autor ausgeschrieben im Literaturverzeichnis
  7) Ort des Verlags
  8) "ebd." automatisch erzeugen bei zwei aufeinanderfolgenden Zitaten derselben
     Quelle

### Finale Checkliste

* [ ] Links nicht mehr rot
* [ ] Punkte nach Zitaten an richtiger Stelle
* [ ] Zeilenumbrüche in Markdown prüfen

### CSL evaluation

<!-- markdownlint-disable MD013 -->
Anforderung                                                                                       | 1. | 2. | 3.       | 4. | 5. | 6. | 7. | 8.
--------------------------------------------------------------------------------------------------|----|----|----------|----|----|----|----|---
<http://www.zotero.org/styles/philipps-universitat-marburg-note>                                  | ok | x  | kl. Abw. | ok | ok | ?  | ?  |
<https://raw.githubusercontent.com/citation-style-language/styles/master/art-history.csl>         | x  | ok | x        | x  | ok | ?  | ?  |
<https://www.zotero.org/styles/chicago-annotated-bibliography>                                    | ok | x  | x        | x  | ok | ?  | ?  |
<https://www.zotero.org/styles/citation-compass-apa-note>                                         | ok | x  | ok       | ok | ok | x  | x  |
<https://github.com/citation-style-language/styles/raw/master/turabian-fullnote-bibliography.csl> |    |    |          |    |    |    |    | ok
modified citation-compass-apa-note                                                                | ok | ok | ok       | ok | ok | ok | ok |
<!-- markdownlint-enable MD013 -->

## Issues

### jfif images

* cannot be processed correctly by pdflatex
* convert to jpg using imagemagick: `convert input.jfif output.jpg`
* there might also be an issue with the image header:
  <https://tex.stackexchange.com/questions/243753/is-it-imagemagicks-fault-or-pdflatexs-that-some-jpegs-arent-working>

### Regular footnotes and "ebd."

* pandoc creates unexpected stuff
* see latex output

## Future improvements

* [] directly use \mycaption as figures are defined im latex
* [] get rid of fix labels for figures
* [] Abb. drehen
* [] get rid of fix labels for figures
  * seems to be not possible with plain markdown
* [] analyze issue with epub and figures
* [] fix word counter badge
* [] fix ebd issue with regular footnotes
* [] combine citation style checker with 00_Syntax.md
* [] fix issue with lof; no warnings after four compilations
