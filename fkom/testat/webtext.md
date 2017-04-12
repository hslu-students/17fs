**Windows- und Mac-User schreiben Texte meistens mit _Word_. Mit _Libre Office
Writer_ gibt es eine kostenlose Alternative zu _Word_, die auch unter Linux
läuft. Hartgesottene Linux-User verwenden aber lieber einen Texteditor zum
Schreiben ihrer Texte. Warum ist das so?**

Microsofts kostenpflichtige Textverarbeitung _Word_ aus der _Office_-Suite
verwendet als Dateiformat _Office Open XML_ (OOXML<sup>[1](#1)</sup>). Die
Open-Source-Textverarbeitung _Libre Office Writer_<sup>[2](#2)</sup> verwendet
hingegen _OpenDocument Text_ (ODT<sup>[3](#3)</sup>) als Dateiformat. Beide
Programme (_Word_ und _Writer_) unterstützen beide Formate (OOXML und ODT).

Texteditoren verwenden als Dateiformat einfache Textdateien.

# Unterschiede zwischen Textdateien und _OOXML/ODT_

OOXML und ODT speichern Texte in einer komprimierten XML-Struktur ab. Einfache
Textdateien haben keine solche Struktur, sondern bestehen nur aus einer Reihe
von Zeichen. Dadurch ergeben sich einige Unterschiede in der Handhabung von
OOXML/ODT-Dateien einerseits und Textdateien andererseits:

1. OOXML/ODT-Dateien lassen sich nur mit _Word_ und _Writer_ zuverlässig
bearbeiten. Textdateien lassen sich mit einem beliebigen Texteditor bearbeiten.
2. OOXML/ODT-Dateien enthalten viele Zusatzinformationen für Formatierung,
Struktur und zusätzliche Einstellungen. Textdateien haben diesen _Overhead_
nicht, da sie nur die eigentlichen Nutzdaten enthalten.
3. OOXML/ODT-Dateien können nur so lange gelesen werden, wie die enstprechenden
Programme dazu verfügbar sind. Textdateien, die nur aus einer Reihe von Zeichen
bestehen, können immer gelesen werden.
4. OOXML/ODT-Dateien lassen sich nur im «WYSIWYG»-Modus («what you see is what
you get») bearbeiten. Textdateien lassen sich auch als _Textstrom_ bearbeiten.

Die ersten drei Punkte sprechen klar _für_ den Einsatz von Textdateien. Doch
welche Vorteile bietet ein _Textstrom_?

# Beispiel: Wörter in Artikeln zählen

Angenommen wir haben eine Reihe von Artikeln; einmal im ODT-Format (Endung
`.odt`) und einmal im Textformat (Endung `.txt`). Nun wollen wir herausfinden,
welcher Artikel am meisten Wörter enthält. Mit unseren ODT-Dateien verfahren wir
folgendermassen:

1. Wir öffnen den ersten Artikel mit _Writer_.
2. Wir gehen auf das Menü _Tools_ und wählen den Eintrag _Word Count_.
3. Wir notieren uns den Dateinamen und die Anzahl der Wörter dazu.
4. Wir wiederholen den Vorgang für den nächsten Artikel.

Dieses Vorgehen ist sehr aufwändig. Zudem muss der Vorgang später wiederholt
werden, wenn die Artikel in der Zwischenzeit verändert worden sind.

# Der `wc`-Befehl

Mit Textdateien sieht das Vorgehen anders aus. Wir öffnen ein _Terminal_ und
verwenden den `wc`-Befehl<sup>[4](#4)</sup>:

```bash
$ wc -w *.txt
```

- `wc` steht für «word count» und zählt die Wörter in einer Datei. 
- Standardmässig gibt `wc` die Anzahl Zeilen, Wörter und Zeichen einer Datei
  aus. Mit dem Parameter `-w` (für «words») erhalten wir nur die Anzahl Wörter.
- Mit `*.txt` übergeben wir dem Programm sämtliche Textdateien im
  Arbeitsverzeichnis.

Dadurch erhalten wir die folgende Ausgabe:

    1739 berlinreise.txt
    2220 eigenes-bier-brauen.txt
     893 im-stau.txt
    1231 neues-aquarium.txt

# Die Ausgabe an `sort` weiterleiten

Wir sehen die Anzahl Wörter in der ersten Spalte, doch die Zeilen sind nicht
richtig, d.h. nach der Anzahl der Wörter sortiert. Über das Muster `*.txt`
erhält `wc` die Dateien in alphabetischer Reihenfolge – und gibt sie auch in
alphabetischer Reihenfolge wieder aus. Darum verwenden wir zusätzlich
den `sort`-Befehl<sup>[5](#5)</sup>.

```bash
$ wc -w *.txt | sort -n -r
```

- Zwischen den Befehlen steht das Zeichen `|`. Das ist eine sogenannte _Pipe_,
  zu Deutsch etwa «Röhre». Eine Pipe nimmt die Ausgabe eines Programmes entgegen
  und leitet sie als Eingabe zum nächsten Programm weiter. **Der Text «fliesst»
  als _Textstrom_ durch die Röhre.**
- Es folgt der `sort`-Aufruf, wodurch Textzeilen in alphabetisch aufsteigender
  Reihenfolge sortiert werden.
- Da wir keine alphabetische, sondern eine numerische Sortierung brauchen («100»
  wäre alphabetisch sortiert kleiner als «9»), geben wir den Parameter `-n` (für
  «numeric») an.
- Zudem soll die Reihenfolge nicht aufsteigend (die kleinste Zahl zuerst)
  sondern absteigend (die grösste Zahl zuerst) sein, was wir mit dem Parameter
  `-r` (für «reverse») erreichen.

Die Ausgabe sieht nun so aus:

    2220 eigenes-bier-brauen.txt
    1739 berlinreise.txt
    1231 neues-aquarium.txt
     893 im-stau.txt

Der Artikel mit den meisten Wörtern ist `eigenes-bier-brauen.txt`. Für vier
Dateien mag das nicht besonders beeindruckend sein. Hätten wir tausende von
Dateien, wäre das Vorgehen genau gleich – doch die Zeitersparnis gegenüber
dem manuellen Vorgehen mit ODT-Dateien gewaltig. **Die Lösung mit den
Textdateien _skaliert_ wesentlich besser.**

# Und jetzt?

Wir haben gesehen, dass sich ein alltägliches Problem mithilfe von Textdateien,
einfachen Programmen (wie `wc` und `sort`) und Textströmen effizienter lösen lässt
als mit einer Textverarbeitung.

Wer noch weitere solche Techniken kennenlernen möchte, dem empfehle ich den
Vortrag _Power Use of UNIX_<sup>[6](#6)</sup> von Dan North.

# Quellen

1. <span id="1">[Office Open XML](http://officeopenxml.com/)</span>
2. <span id="2">[LibreOffice Writer](https://www.libreoffice.org/discover/writer/)</span>
3. <span id="3">[Open Document Format](http://opendocumentformat.org/)</span>
4. <span id="4">[Der `wc`-Befehl](http://pubs.opengroup.org/onlinepubs/009604499/utilities/wc.html)</span>
5. <span id="5">[Der `sort`-Befehl](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/sort.html)</span>
6. <span id="6">[Power Use of Unix](https://www.youtube.com/watch?v=7uwW20odwEk)</span>
