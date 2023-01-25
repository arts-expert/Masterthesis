---
lang: de-DE
citeproc: true
csl: lus-citation-compass-apa-note.csl
bibliography: Literatur-Templates.yaml
colorlinks: true
link-citations: true
notes-after-punctuation: false
---

# Zitierstil-Checker

## Bauen

```bash
pandoc citation-style-checker.md --citeproc -o citation-style-checker.pdf
```

## Zitate

Erstes Zitat eines Buchs. [^1]

Erstes Zitat eines Buchs mehrerer Autoren. [@idBuchMehrererAutoren,S.2]

Zweites Zitat desselben Buchs mehrerer Autoren. [vgl. @idBuchMehrererAutoren,S.5]

Zweites Zitat desselben Buchs. [@idBuch,Kap.8]

Erstes Zitat einer Dissertation. [@idDissertation]

Drittes Zitat desselben Buchs. [@idBuch]

Zweites Zitat derselben Dissertation. [@idDissertation]

Erstes Zitat eines Sammelbands. [@idSammelband]

Zweites Zitat desselben Sammelbands: "Diesmal ein wörtliches" [@idSammelband].

Erstes Zitat eines Zeitungsartikels. [@idMagazin]

Zweites Zitat desselben Zeitungsartikels. [@idMagazin]

Erstes Zitat eines Ausstellungskatalogs. [@idAusstellungskatalog]

Zweites Zitat desselben Ausstellungskatalogs. [vgl. @idAusstellungskatalog]

Drittes Zitat desselben Ausstellungskatalogs.
**Als regular Footnote funtioniert das Ebd. nicht korrekt!** [^x]

[^x]: vgl. @idAusstellungskatalog

[^1]: @idBuch [S.1-5]

Erstes Zitat eines Lexikonsartikels. [@idLexikon]

"Erstes Zitat einer Rede" [@idRede].

\newpage

## Literatur
