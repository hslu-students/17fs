# Datenstrukturen

## Eigneschaften von Datenstrukturen

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

statische und dynamische Datenstruktur:

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

explizite oder implizite Beziehungen zwischen den Elementen:

- explizit (z.B. Kette): Elemente sind miteinander verknüpft; Elemente kennen ihre Nachbarglieder
- implizit: Beziehungen zwischen Elementen nicht von Elementen festgehalten, sondern von übergeordneter Struktur

p. 8

direkter vs. indirekter (sequenzieller) Zugriff:

- direkter Zugriff: sofort auf ein beliebiges Element zugreifen (mittels Index oder Key); Beispiel: Speicheradresse im Computuer
- indirekter Zugriff: es müssen Vorgängerelemente durchlaufen werden, um auf ein bestimmtes Element zu kommen; Beispiel: Magnetband, Audio-Kasette, Java Streams

Aufwand von Operationen:

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
    - durchsuchen: O(n)
    - sortieren: O(log n)

- binäre Suche
    - in der Mitte teilen
    - anhand Trennelelent unterscheiden: links oder rechts weitersuchen?
    - rekursiv auf ausgewählte Hälfte wiederholen
    - fertig, wenn nur noch ein Element vorhanden ist

- einfügen (unsortiert)
    - wenn man sich letzten freien Platz merkt: O(1)
    - ohne diesen Trick: O(n)
- einfügen (sortiert)   
    - TODO 16/17

-entfernen: zunächst finden! O(n)
