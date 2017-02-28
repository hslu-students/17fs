# Collections

Datenstrukturen dienen zur effizienten Speicherung und Verarbeitung von _Mengen_ von Daten.

- Verarbeitung: Funktionen, die einzelne Objekte bearbeiten, nach bestimmten Objeken suchen, sie zählen, filtern, nach bestimmten Kriterien sortieren usw.

Beispiele:

- Array
- Tree
- List
- Map
- Queue
- Set
- Stack

Es gibt keine universelle Datenstruktur, die alles perfekt kann, sondern für jede Aufgabe mehr oder weniger geeignete Datenstrukturen.

Eigenschaften von Datenstrukturen:

- Grösse: dynamisch/statisch
- Zugriff: direkt oder sequenziell
- Sortierung: sortiert/unsortiert, mit/ohne Ordnung
- Suche: beschleunigt?
- Geschwindigkeit TODO p. 7

Java Collection Framework:

- Schnittstellen: abstrakte Datentypen
- Implementierungen: konkrete Implementierungen der Schnittstellen
- Algorithmen: (meist) polymorph implementierte Methoden zur Behandlung von Datenstrukturen, z.B.:
    - `iterator()`: sequenzieller Zugriff auf alle Elemente
    - `sort(List<E>)`: sortiert beliebige `List`-Implementierung

Grundlegende Funktionen für das Funktionieren des Collection-Frameworks:

- Sortierung: `equals()`, `Comparable<T>` (beide durch Element-Klasse implementiert), `Comparator<T>` (durch Client implementiert)
- Hashing: `hashCode()` (durch Element-Klasse implementiert)

Arten der Gleichheit:

- Typgleichheit (wenn `instanceof true` zurückliefert, Objekte Instanzen gleicher Klassen sind); lockere Form der Gleichheit
- Identität (das gleiche Objekt `==`); strengste Form der Gleichheit (gilt, wenn `equals()` nicht überschrieben wird)
- Wertegleichheit (gilt, wenn `equals()` überschrieben wrude); am häufigsten verwendete Form der Gleichheit

Speicherverwaltung:

- Annahme (Vereinfachung): Speicher steht in linearem Adressraum zur Verfügung
- Verwaltung mittels Allokationen: jede Allokation speichert Startadresse und eine Grösse
- Problematik bei der Verschiebung von Speicherblöcken: Aktualisierung der darauf verweisenden Zeiger
- Freigegebener Speicher wird bloss als nicht besetzt markiert, aber nicht mit 0 überschrieben

Anforderungen an Speicherverwaltung:

- Zuverlässigkeit (keine Leaks)
- Schnell: keine lange Suche nach passendem, freien Block bei Allokation; bei Freigabe
- Zusammenfassen nebeneinanderliegender Lücken
- Welche Datenstruktur eignet sich dazu am besten?
- TODO: p.17

- Belegungsstrategie
    - erster passender Block
    - noch kleinster, passender Block
- Freigabestrategie
- Datenstruktur
TODO
