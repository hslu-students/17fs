# 1 Grundlegende Zusammenhänge

## a)

Man könnte die Dreiecke nach Flächeninhalt oder Umfang sortieren. Ich schlage
den Flächeninhalt als natürliche Ordnung vor.

## b)

Die Klasse `Triangle` implementiert das Interface `Comparable` und somit die
Methode `compareTo(Triangle o)`. Der Parameter ist ein Dreieck, das für den
Vergleich hinzugezogen werden soll. Der Rückgabewert ist eine Zahl, für die
gilt:

- > 0: das aktuelle Dreieck ist _grösser_ als der Parameter
- = 0: beide Dreiecke sind gleich gross
- < 0: das aktuelle Dreieck ist _kleiner_ als der Parameter

## c)

`hashCode()` sollte auch mit `equals()` korrespondieren. Gleiche Objekte
_müssen_ den gleichen `hashCode` haben. Unterschiedliche Objekte _sollten_ einen
unterschiedlichen `hashCode` haben. `equals()` und `hashCode()` überschreibt man
von der Klasse `Object`.

## d)

Eine spezielle Ordnung kann mit einem `Comparator` und der Methode
`compareTo(Triangle a, Triangle b)` implementiert werden. Dazu braucht es kein
UML-Klassendiagramm.

## e)

- `Arrays.sort(Object[])` für die natürliche Ordnung
- `Arrays.sort(Object[], Comparator<? super T>)` für die spezielle Ordnung

Aus der JavaDoc:

    Implementation note: This implementation is a stable, adaptive, iterative
    mergesort...

`sort()` arbeitet _stabil_.

## f)

Welches UML-Klassendiagramm von d?

# 2 Entscheidungsbaum

## a)

![Entscheidungsbaum](08-tree.png)

# 3 Aus instabil mach stabil

TODO

# 4 Direktes Einfügen

TODO

# 5 Direktes Auswählen

TODO

# 6 Direktes Austauschen

TODO

# 7 Optional: Shellsort

TODO
