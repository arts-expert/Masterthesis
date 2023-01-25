# Markdown Syntax

## Unterkapitel

### Unter-Unterkapitel

## Absätze und Zeilenumbrüche

So sieht ein ganz normaler Absatz aus. Der nächste Absatz wird durch eine
Leerzeile eingeleitet.

Das hier ist der nächste Absatz. Wenn du statt eines neues Absatzes nur einen
Zeilenumbruch haben möchtest, dann musst du einfach zwei Leerzeichen und einen
Enter eingeben.  
Der nachfolgende Satz beginnt dann in einer neuen Zeile.

## Auflistungen

Für Notizen kannst du z.B. auch Auflistungen erzeugen:

* dies ist der erste Punkt
* dies der zweite

## Fett und kursiv

_Von Unterstrichen umschlossener Text wird kursiv formatiert._

__Von doppelten Unterstrichen umschlossener Text wird fett formatiert.__

## Zitate und Fußnoten

Und das hier wäre der nächste Absatz. "Und hier ein direktes Zitat mit einer
**regulären** Fußnote" [^a]. Die Fußnote selber kannst du theoretisch überall im
Dokument definieren. Also z.B. auch direkt nach diesem Absatz. Vielleicht ist es
aber übersichtlicher, wenn du dies für alle Fußnoten am Ende des Dokuments tust.

Statt regulären Fußnoten kannst du auch sogenannte **inline** Fußnoten
verwenden. Dabei sparst du dir die Referenz-ID und hast definierst den
Fußnoten-Inhalt direkt im Text [vgl. @fleck2020frau S. 77].

Man kann wörtliche Zitate auch als freistehende Blöcke schreiben mit folgender
Syntax:

> "Ach wie ist das schön, wenn ich hier spazieren geh. Und so weiter und
> so fort." [^b]

(Hier haben wir denselben Autor das zweite mal zitiert. In der Fußnote wird
daher die Kurzform der Referenz generiert.)

Hier referenzieren wir testweise alle Quellen, damit das Literaturverzeichnis
schonmal vollständig erzeugt wird. [^c][^d][^e]

Die Datei `Literatur-Templates.yaml` enthält für jeden möglichen Literatur-Typen
ein Beispiel. [^g][^h][^i][^j]

[^a]: Hier steht der Inhalt der Fußnote, zitiert nach @fleck2020frau [S.9-11].

[^b]: vgl. @fleck2020frau [S.12]

[^c]: @luther2017bibel

[^d]: @fink1993mythologie

[^e]: @baumstark2015tod

[^g]: @idBuch

[^h]: @idDissertation

[^i]: @idSammelband

[^j]: @idZeitungsartikel
