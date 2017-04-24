# Sortieren

## Problem

- Zugriff auf unsortierte Datenreihe: `O(n)`
- binäre Suche (sukzessives Halbieren): `O(ld n)`
- alternativ: sortiertes Einfügen

## Ordnung

- totale vs. differenzielle Ordnung
- totale Ordnung: zwei beliebige Elemente lassen sich vergleichen
    - z.B. Zahlen (`a == b`, `a > b`, `a < b`)
- differenzielle Ordnung: Vergleich nach Kriterium/Kenngrösse
    - z.B. Mensch (nach Alter, Gewicht, Vermögen, Haarfarbe etc.)
    - auch Kombination von Attributen möglich

## Java

- `Comparable<T>.compareTo(T o)`
    - `a.compareTo(b);`
- `Comparator<T>.compare(T a, T b)`
    - `c.compare(a, b);`

## Sortieralgorithmen

- vergleichsbasierte Suchalgorithmen vs. Radix-Sortieralgorithmen

### Vergleichsbasierte Sortieralgorithmen 

- bestenfalls `O(n * log n` bei vergleichsbasierten Algorithmen
- `n` Elemente: `n!` verschiedene Anordnungen
- mindestens `log2(n!)` Vergleiche notwendig
    - Daten als Baum: `n!` Blätter, Höhe `log2(n!)`
    - `log2(n!) ~= n * log n`
    - da `log(n!) < log(n^n) = n * log n`

### Radix-Sortieralgorithmen

- eher "exotisch"
- erfordert für `n` Datenelemente `n` eindeutige Schlüssel
- bestenfalls `O(n)`

## Stabilität

- stabile vs. instabile Sortieralgorithmen
    - stabil: gleiche Elemente/Schlüssel bleiben an gleicher Stelle
    - instabil: gleiche Elemente/Schlüssel können ihre Position wecheln
- Beispiel: _3_,2,4,**3**,1,5 (3 doppelt vorhanden)
    - stabil sortiert: 1,2,_3_,**3**,4,5 (_3_ bleibt vor **3**)
    - instabil sortiert: 1,2,**3**,_3_,4,5 (_3_ und **3** können Reihenfolge
      ändern)
- wichtig bei Sortierung nach Kriterium
    - Beispiel: Sortierung nach Vorname, wenn bereits nach Nachname sortiert
      wurde

## internes vs. externes Sortieren

- internes Sortieren: alle Daten sind im Arbeitsspeicher
- externes Sortieren: kein direkter Vergleich möglich, Lesevorgang erforderlich

## Zeitkomplexität

- bei Sortieralgorithmen Anzahl Vergleiche ausschlaggebend
- average, best und worst case unterscheiden!
- sind die Eingabedaten bereits (teilweise) sortiert?

## einfache Sortieralgorithmen

- Insertion Sort
- Selection Sort
- Bubble Sort
- Shell Sort (schlägt Brücke zu höheren Sortieralgorithmen)

### Insertion Sort ("direktes Einfügen")

- Elemente von links nach rechts durchlaufen
- Unterscheidung sortierter/unsortierter Teil
- nächster Wert wird korrekt in sortierten Teil (links) eingefügt
- kann stabil implementiert werden, wenn mit `<` statt `<=` verglichen wird
- Ordnung:
    - best case (vorsortiert): `O(n)`
    - worst case (umgekehrt sortiert): `O(n^2)`
    - average case: `O(n^2)`


### Selection Sort ("direktes Auswählen")

- Elemente von links nach rechts durchlaufen
- Unterscheidung sortierter/unsortierter Teil
- kleinstes Element im unsortierten Teil suchen
- gefundenes Element mit erstem Element des unsortierten Teils ersetzen
- Vorteile
    - weniger Verschiebeoperationen
    - sortierter Teil braucht nicht mehr verändert zu werden
    - Verschiebung über grosse Distanzen
- TODO: Ordnung?

### Bubble Sort ("grösste steigen auf")

- Vergleich jedes Wertes mit jedem
- benachbarte Plätze vertauschen
- Ordnung:
    - best case: `O(n)` (abbrechen, wenn keine Vertauschungen mehr stattfinden
      und Array vorsortiert ist)
    - average/worst case: `O(n^2)`

### Shellsort (basiert auf Insertion Sort)

- grobe Sortierung und Verfeinerung
- paarweise über grosse Distanzen sortieren
- Schrittweite halbieren
- Problem: sinnvolle Schrittweite ermitteln (Knuth, Hibbard)
- instabil
- average case: `O(n^2)`
- Zwischending zwischen einfachen und höheren Sortieralgorithmen
