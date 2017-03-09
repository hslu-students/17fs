# Bäume

- Bäume in der Informatik stehen kopfüber
- Einsatz: zwei Szenarien
    1. Daten haben eine inhärent hierarchische Struktur
        - Dateisystem
        - Stammbaum
        - Vererbungshierarchie
    2. Nicht-hierarchische Strukturen werden zum schnellen Suchen in geordneten
    Baumstruktur (geordnete Datenmenge) übergeführt
        - Aufwand: `O(log n)` bei binärer Suche (schneller als sequenzielle
          Suche mit `O(n)`)
- Verschiedene Arten von Baumstrukturen
    - Gemeinsamkeiten: Wurzel/Stamm
    - Unterschiede
        - Anzahl äste (Vergabelung)
        - Unterschiedliche Länge (Tiefe)
        - Breite (Grad) und Höhe des Baumes sind variabel
    - Ungerichteter Baum (reine Hierarchie)
    - Out-Tree: Navigation von der Wurzel nach unten (zu den Blättern)
    - In-Tree: Navigation von den Blättern nach oben (zur Wurzel)
    - Spezialformen:
        - Binär-Baum: TODO
        - AVL-Baum: höhenbalancierter Binärbaum
        - B-Baum: balancierter Baum
        - B\*-Baum: restriktivere Form des balancierten Baums
        - Binominal-Baum: speziell strukturierter Baum

## Beispiel: UNIX-Dateisystem

- Wurzelverzeichnis `/`
- Verzeichnisse auf erster Stufe: `etc`, `home`, `proc`, `var`, `dev`
- Knoten repräsentieren Verzeichnisse und enthalten eine Liste von Dateien und
  anderen Verzeichnissen
- TODO: p.10

## Grundelemente eines Baumes

- Wurzel (root): hat kein übergeordnetes Element
- (innere) Knoten (node): hat `1..n` (Kinder-)knoten
- Blatt (leaf): Knoten ohne Kinder
- verbindende Pfeile werden als Kanten (edges) bezeichnet
    - gerichtet: Pfeil zeigt (bei out-tree) vom übergeordneten zum
      untergeordneten Knoten

## Kenngrössen von Bäumen

- _Ordnung_ eines Baumes: definiert maximale Anzahl Kinder pro Knoten
- _Grad_ eines Knotens: bezeichnet die Anzahl Kinder eines Knotens
    - Blätter haben den Grad 0
- _Pfad_ eines Knotens: Weg von der Wurzel bis zum entsprechenden Knoten
- _Tiefe_ eines Knotens: seine Entfernung zur Wurzel (Zählen der Pfadelemente)
- _Niveau_ eines Baumes: Menge aller Knoten mit gleicher Tiefe
- _Höhe_ eines Baumes: Tiefe des Knotens mit der grössten Entfernung zur Wurzel
- _Gewicht_ eines Baumes: Anzahl enthaltener Knoten

TODO: Grafik mit Beispiel für jede Grösse

## Füllgrad eines Baumes

- _ausgefüllter_ Baum: jeder innere Knoten hat die maximale Anzahl Kinder
    - die Ordnung der inneren Knoten ist gleich dem Grad des Baumes
- _voller_ Baum: letztes Niveau linksbündig angeordnet und ausser diesem jedes
  Niveau die maximale Anzahl an Kindern enthält (TODO: p.22)
- _vollständiger_/_kompletter_ Baum:
    - maximale Anzahl Knoten auf jedem Niveau
    - minimale Anzahl Niveaus für sein Gewicht
    - symmetrisch ausgeglichen

