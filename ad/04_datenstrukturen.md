# Datenstrukturen

## Eigenschaften von Datenstrukturen

- Datenstruktur als reine Sammlung: ungeordnete Ablage, nicht deterministische Reihenfolge (Analogie: Steinhaufen), keine Elemente dürfen verloren gehen 
- Datenstruktur mit einer bestimmten Reihenfolge: Reihenfolge bleibt (Analogie: Bücherstapel)
- Datenstruktur, die Elemente (beim Einfügen) sortieren (Analogie: vollautomatisches Hochregallager)

## Operationen auf Datenstrukturen

Grundlegende Operationen:

- Einfügen von Elementen
- Suchen von Elementen
- Entfernen von Elementen
- Ersetzen von Elementen: Kombination von Suchen, Entfernen und Einfügen

Operationen in Abhängigkeit von Reihenfolge oder Sortierung:

- Nachfolger
- Vorgänger
- Sortierung
- Minimum/Maximum

## Statisch oder dynamisch

- statisch: feste, bei der Initialisierung definierte Grösse (Analogie: Flasche, benötigt und bietet immer gleich viel Platz)
    - Vorteile:
        - Grösse immer bekannt (einfache Planbarkeit)
        - einfache Implementierung
        - einfache Adressierbarkeit (Direktzugriff auf Elemente)
    - Nachteile:
        - Aufwändige Operationen erforderlich, wenn die Kapazität ausgeschöpft ist
        - Verschwendung bei geringer Auslastung
- dynamisch: kann Grösse während Lebensdauer verändern und theoretisch beliebig viele Elemente aufnehmen (Analogie: Luftballon)
    - Vorteile:
        - Man braucht sich bei der Erstellung keine Gedanken darüber zu machen, wie viele Daten gespeichert werden müssen
        - keine Platzverschwendung (besonders zu Beginn)
    - Nachteile:
        - Schwieriger zu implementieren
        - Aufwändigere Operationen (ständig neue Speicherallokationen notwendig)

## Element-Beziehungen: explizit oder implizit

- explizit: Elemente sind miteinander verknüpft; Elemente kennen ihre Nachbarglieder
    - Analogie: Fahrradkette
    - Beispiel: (doppelt) verkettete Liste
- implizit: Beziehungen zwischen Elementen nicht von Elementen festgehalten, sondern von übergeordneter Struktur
    - Analogie: Bücherregal
    - Beispiel: Array, Liste, Map

## Zugriff: direkt oder indirekt (sequenziell)

- direkter Zugriff
    - sofort auf ein beliebiges Element zugreifen (mittels Index oder Key)
    - Beispiel: Speicheradresse im Computuer
- indirekter (sequenzieller) Zugriff
    - es müssen Vorgängerelemente durchlaufen werden, um auf ein bestimmtes Element zu kommen
    - Beispiel: Magnetband, Audio-Kasette, Java Streams

## Aufwand von Operationen

- variiert je nach Operation und Anzahl Elemente
- vor allem die Ordnung interessant

Beispiel: Stack konstant beim Einordnen, n² beim sortieren

## Array

- in Java: Sprachelement
- statisch
- implizit
- direkter Zugriff
- Reihenfolge stabil
- Aufwand
    - durchsuchen: `O(n)`
    - sortieren: `O(log n)`

### Binäre Suche

- in der Mitte teilen
- anhand Trennelelent unterscheiden: links oder rechts weitersuchen?
- rekursiv auf ausgewählte Hälfte wiederholen
- fertig, wenn nur noch ein Element vorhanden ist

### Einfügen

- unsortiert
    - wenn man sich letzten freien Platz merkt: `O(1)`
    - ohne diesen Trick: `O(n)`
- sortiert
    - Position suchen: `O(log n)`
    - restliche Elemente nach rechts schieben: `O(n)`
    - Aufwand: `O(n)`

### Entfernen

- unsortiert (fortlaufend befüllt)
    - Position suchen: `O(n)`
    - Entfernen und Lücke (mit beliebigem Element!) schliessen: `O(1)`
    - Aufwand: `O(n)`
- sortiert (fortlaufend befüllt)
    - Position suchen: `O(log n)`
    - Entfernen und Lücke (mittels nach links durchschieben!) schliessen: `O(n)`
    - Aufwand: `O(n)`

### Empfehlungen

Arrays sollten eingesetzt werden, wenn:

- die Datenmenge _beschränkt_, von anfang an _bekannt_ und eher _klein_ ist
- die Datentypen _elementar_ sind, also eine bekannte und konstante Grösse haben

Sonst sind Collections, wie z.B. eine  `ArrayList`, vorzuziehen.

## Listen

- einfach verkettete Listen: nur vorwärts iterierbar
    - Referenz auf das erste Element (head)
    - jedes Element (jeder Node) kennt seinen direkten Nachfolger
    - das letzte Element zeigt auf `null`
- doppelt verkettete Listen: vor- und rückwärts iterierbar
    - Referenzen auf das erste (head) und das letzte (tail) Element
    - jedes Element kennt seinen direkten Nachfolger und Vorgänger
    - das letzte Element zeigt auf `null`

### Eigenschaften von Listen

- dynamisch: grösse passt sich der Anzahl zu speichernder Elemente an
- explizit: Nodes "kennen" einander
- indirekter Zugriff: von head vorwärts oder von tail rückwärts durchsuchbar
- Reihenfolge definiert und konstant

### Aufwand

- Suchen: `O(n)` (mit Optimierung `O(log n)` möglich)
- Einfügen (unsortiert): `O(1)`
    - wenn es bei einer einfach verketteten Liste bei head eingefügt wird
    - wenn es bei einer doppelt verketteten Liste bei head oder tail eingefügt
      wird
- Einfügen (sortiert): `O(n)`
- Entfernen: `O(n)` (wegen Suche, reines Entfernen nur `O(1)`)

### Modellierung

- zwei Klassen:
    - Liste
        - enthält head (und tail)
        - Hilfsattribute (z.B. Anzahl Elemente)
    - Elemente
        - TODO: p.27

### Vergleich (Liste vs. Array)

- Liste besser für grosse, variierende Datenmengen
- Liste hat geringeren Einfügeaufwand
- Listen können in Java generisch implementiert werden, Arrays nicht

## Stack

- Stapelspeicher
    - `push()`

TODO: p.32

### Aufwand

Implementierung mittels Liste oder Array:

- `push()`: `O(1)`
- `pop()`: `O(1)`

TODO: p.34-35

## Queue

- Warteschlange
    - `enqueue(E)`: Element am Ende anhängen
    - `E dequeue`
    - TODO: p.39

### Aufwand

- Implementierung mit doppelt verketteter Liste:
    - `enqueue`: mit `O(1)`
    - `dequeue`: mit `O(1)`
- Implementierung mit einem Array: als Ring Buffer!
    - Index für erstes und letztes Element "rotiert"
    - Indizes dürfen einander nicht "überholen"
        - Index % Arraygrösse = Position
        - vor Index 0 liegt Index `n-1`
    - `enqueue`: mit `O(1)` (gilt nur für Einfügen am Ende der Warteschlange!)
    - `dequeue`:

TODO: p.40-42
