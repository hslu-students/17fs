# Virtualisierung im Data Center

## SMP: Symmetrische Multiprozessoren

- zwei oder mehr gleichartige Prozessoren mit vergleichbaren Möglichkeiten
- Prozessoren zeilen sich das Memory und sind über einen Bus oder andere interne
  Verbindungen zusammengeschaltet
- Prozessoren teilen sich I/O-Geräte
- Alle Prozessoren können die gleichen Funktionen ausführen (daher "symmetrisch")
- System wird durch ein integriertes OS (Microcode auf dem Chip) kontrolliert
    - stellt Interaktion zwischen Prozessoren und deren Programmen her
    - auf Stufe Job, Task, File und Daten-Elementen

### Vorteile von SMP

- Performance durch parallele Ausführung
- Skalierbarkeit durch Geräte mit unterschiedlichem Preis-Leistungs-Verhältnis
- Verfügbarkeit
- TODO p.6

### SMP-Organisation

- L1- und L2-Cache auf dem Prozessor
- L3-Cache geteilt
- Prozessoren über Bussystem verbunden

## Multi-Core-Prozessoren

- bekannt als Chip-Multiprozessor
- zwei oder mehr Cores auf einem Chip
- jeder Core beinhaltet alle Komponenten eines unabhängigen Prozessors
    - auch L1- und L2-Cache

### Architekturen

Mit steigender Anzahl Cores wird die Verbindung zwischen den Cores immer
kritischer.

- Kommunikationsmodell
    - Message Passing: experimentell
    - Shared Address
- Physische Verbindung
    - Network
    - Bus: schlechte Skalierbarkeit

## Speicherorganisation

- UMA: unified memory architecture
    - mehrere CPUs an ein gemeinsames Memory angeschlossen
    - alle CPUs haben Direktzugriff
    - jede CPU hat einen lokalen Adressraum (schlechte Skalierbarkeit)
- NUMA: non-unified memory architecture (shared memory architecture)
    - zwei oder mehr SMPs physisch verbunden
    - Shared Memory: ein globaler Adressraum
    - SMP kann direkt auf das Memory anderer SMPs zugreifen
    - nicht alle CPUs haben die gleiche Zugriffszeit auf das Memory
        - variiert je nach Speicheradresse
        - je weiter weg das Memory, desto langsamer der Zugriff
    - CC-NUMA: mit Cache-Kohärenz (cache coherence)

### LLC: last level cache

TODO p. 17

## Simultanes Multi-Threading

Hauptprobleme bei Multi-Core-Architekturen:

1. Memory-Stalls
2. Cache-Kohärenz

### Memory Stalls

Zeitanteil, der für das Warten auf die Daten ins Memory benötigt wird. Beispiel:

- Transaktionsdatenbank: ca. 75%
- Web-Server: ca. 50%
- Entscheidungsunterstützte (mittels Machine-Learning, "trainierte Algorithmen")
  Datenbank: ca. 10-50%

Analogie-Beispiel: betrüge ein einziger CPU-Zyklus eine Sekunde statt 0.3
Nanosekunden, so dauerte das Laden:

- aus dem L1-Cache: 3 Sekunden
- aus dem L3-Cache: 45 Sekunden
- aus dem DRAM: 6 Minuten
- von einer HD: Monate oder Jahre 

Lösungsansatz: Threads (kleinste Einheit, die ein OS auf Cores verteilen kann).
Während ein Thread darauf wartet, dass Daten ins Memory geladen werden, kann
derweil ein anderer Thread arbeiten, statt zu warten (Multithreading oder
Pipelining); Reduktion um ca. 50% der Idle-Time.

### Superskalare Architektur

- Es werden mehrere Instruktionen pro Taktzyklus abgearbeitet.
- Dazu müssen mehrere Ausführungseinheiten (z.B. ALU, Bit Shifter, Multiplier)
  pro Chip vorhanden sein.
- Im besten Fall sind zur gleichen Zeit alle Ausführungseinheiten beschäftigt.
- Das ist nach dem Aufbau/Füllen bzw. vor dem Abbau/Leeren der Pipeline möglich.
- Nachteil von Pipelining: bedingte Codeblöcke werden immer in die Pipeline
  geladen, auch wenn sie teilweise gar nicht gebraucht werden, und müssen
  teilweise geflusht werden.
- Hyper-Threading: Synomym für Pipelining

### Amdahls Gesetz

- Ab einer gewissen Anzahl Cores nimmt die zusätzliche Leistung pro weiterem
  Core ab
    - nicht parallelisierter Anteil `a`: ca. 20%
    - parallelisierter Anteil `1-a`: ca. 80%

    a = nicht parallelisierter Anteil
    n = Anzahl Cores
    T = Ausführungszeit

    T=a+(a-a)/n

T konvergiert für grosse n gegen 0.2 für einen nicht parallelisierten Anteil von
20%.

### Cache-Kohärenz

- gemeinsames Datenobjekt in beiden Caches und im Memory

1. write through cache
2. write back cache

TODO: p.38-39

Lösungsansätze:

1. Erweiterung der beiden genannten Algorithmen
    - Snoop-Protokoll
        - Zugriffe erfolgen über das gleiche Medium (Bus-System)
        - Cache-Controller beobachten und erkennen Datenänderungen
        - skaliert schlecht
        - TODO: p.44
    - Directory-Protokoll
        - zentrale Liste mit Status aller Cache-Blöcke (welche CPU hat was?)
        - skaliert besser
        - TODO: p.45-47
2. Verwendung eines gemeinsamen Caches
3. Unterteilung der Daten (auf Softwareebene)

## Verbindungsnetzwerke

- Bei 1000 Cores bräuchte es 10^6 Verbindungen zwischen den Cores.
- Jede Verbindung müsste 64 Bit breit sein.
- Es bräuchte `6.4*10^7` Leitungen.
- Bei einer 100-lagigen Platine ergäbe das eine Platinenbreite von 6 km.
- Es ist nicht praktikabel, alle Cores miteinander zu verbinden!

TODO: p.50

Lösung: Verbindungsnetzwerke. Die Cores werden über geschaltete Verbindungen
(Switches) miteinander verbunden.

TODO: p.52

### Bewertungskriterien für Topologien

TODO: p.53-62

"Koppelnetze sind gekoppelte Netze" – "Nein" – "Doch" – "Ohh"

## Skalierbare Applikationen

Wie erstellt man skalierbare Applikationen?

- skalierbare Algorithmen
- feingranulare Locking-Mechanismen verwenden
- Worker-Thread-Pools verwenden
- Skalierungs-Tests durchführen
- Beobachtung der Applikation
- Stellen mit Wartezeiten identifizieren
- Synchronisations-Locks identifizieren
- nicht-skalierbare Algorithmen identifizieren

TODO: p.65 ff
