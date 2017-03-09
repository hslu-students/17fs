## Binäre Bäume

- ein Baum mit Ordnung 2: jeder Knoten hat maximal zwei Kinder
    - linkes und rechtes Kind
- Struktur ermöglicht binäre Suche
- Traversieren

### Traversieren von binären Bäumen

auf drei unterschiedliche Arten (rekursiv):

1. Preorder: Hauptreihenfolge (`x-l-r`)
    a. verarbeite Knoten `x`
    b. traversiere linken Kindknoten: `preorder(x.leftChild)`
    c. traversiere rechten Kindknoten: `preorder(x.rightChild)`
    d. TODO Grafik p.10
    e. die Wurzel wird als erstes verarbeitet
2. Postorder: Nebenreihenfolge (`l-r-x`)
    a. traversiere linken Kindknoten: `preorder(x.leftChild)`
    b. traversiere rechten Kindknoten: `preorder(x.rightChild)`
    c. verarbeite Knoten `x`
    d. TODO Grafik p.12
    e. die Wurzel wird als letztes verarbeitet
3. Inorder: symmetrische Reihenfolge (`l-x-r`)
    a. traversiere linken Kindknoten: `preorder(x.leftChild)`
    b. verarbeite Knoten `x`
    c. traversiere rechten Kindknoten: `preorder(x.rightChild)`
    d. TODO Grafik p.14
    e. die Wurzel wird genau in der Hälfte verarbeitet
    f. Ausgabe in der Reihe der Sortierung

TODO: p.8

### Binäre Suchbäume

- identisch mit binären Bäumen (Ordnung: 2)
- jeder Knoten enthält neben dem Datenelement noch einen _Schlüsselwert_ (zum
  Sortieren oder zum Suchen)
    - Schlüsselwert aus (Teil-)Daten des Datenelements
    - Schlüsselwert aus Berechnung über (Teil-Daten) des Datenelements (z.B.
      `hashCode()`)

Geordneter binärer Suchbaum:

- jeder Schlüssel im linken Teilbaum eines Knotens ist kleiner als der Schlüssel
  des Knotens
- jeder Schlüssel im rechten Teilbaum eines Knotens ist grösser als oder gleich
  dem Schlüssel des Knotens
- dies ermöglicht eine effiziente _binäre Suche_

### Operationen

- Suchen: `O(log n)` (2er-Logarithmus)
    - Beispiel: 1024 Elemente - 10 Entscheidungen (`2^10=1024`)
- Einfügen:
    1. Suchen des geeigneten Platzes zum Einfügen
    2. Eigentliches Anfügen an den gefundenen Node
    3. Die Einfügereihenfolge gibt die Struktur des Baumes vor (im Schlimmsten
    Fall entsteht bei Befüllen eines Baumes eine einfach verkettete Liste)
- Entfernen:
    1. Blatt: einfach entfernen
    2. innerer Knoten mit einem Kindknoten: den inneren Knoten durch den
    Kindknoten ersetzen
    3. innerer Knoten mit zwei Kindknoten: holy fucking jumping shitballs (p.25)
        - TODO: p.26 kleinsten (am weitesten links gelegene) Wert im rechten
          Teilbaum suchen
