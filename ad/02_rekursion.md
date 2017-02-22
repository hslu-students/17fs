# Rekursion

Viele Algorithmen und Datenstrukturen sind von Natur aus _selbstähnlich_ bzw. _selbstbezüglich_.

- Der ggT von 21 und 15 ist gleich dem ggt von 21-15 und 15.
- Ein Verzeichnis enthält Daten und andere Verzeichnisse.
- Ein Ausschnitt einer Matrix, einer Liste, eines Baumes, eines Graphen ist wiederum eine Matrix, eine Liste, ein Baum, ein Graph.

## Rekursion vs. Iteration (am Beispiel der Fakultät)

### Iterativer Ansatz 

Iterative Definition: `n! = 1*2*3*...*n`

Iterative Implementierung:

    public static factorial(int n) {
        int result = 1;
        for (int i = 0; i <= n; i++) {
            result *= i;
        }
        return result;
    }

### Rekursiver Ansatz

Rekursive Definition:

- Rekursionsbasis:
    - `0! = 1`
    - `1! = 1`
- Rekursionsvorschrift: `n!=n*(n-1)!`
- Rekursion: Aufzeigen eines Lösungsweges, wie ein schwieriges Problem auf ein gleichartiges aber einfacheres Problem zurückgeführt werden kann.

Beispiel: `5!` wird auf die Rekursionsbasis zurückgeführt:

    - `5!=5*4!`
    - `5!=5*(4*3!)`
    - `5!=5*(4*(3*2!))`
    - `5!=5*(4*(3*(2*1!)))=5*(4*(3*(2*1)))=120`

Rekursive Implementierung:

    public static factorial(int n) {
        if (n == 0 || n == 1) {
            // Iterationsbasis
            return 1;
        } else {
            // Rekursionsvorschrift (Rückführung)
            return n * factorial(n - 1);
        }
    }

## Mächtigkeit der Rekursion

- Rekursion und Iteration sind _gleich mächtig_.
- Die Menge der berechenbaren Problemstellungen bei Verwendung von Rekursion und Iteration ist gleich.
- Eine iterative Implementierung lässt sich immer in eine rekursive Implementierung überführen (und umgekehrt).
- Vorteile der Rekursion:
    - Rekursive Ansätze sind oft einfach und elegant.
    - Die Korrektheit rekursiver Definitionen lässt sich oft einfacher aufzeigen.
    - Es gibt rein rekursive Programmiersprachen, z.B. LISP und Prolog
- Nachteile der Rekursion:
    - Es ergeben sich schnell sehr viele Methodenaufrufe.
    - Die Programmausführung ist dadurch tendenziell langsamer.
    - Es besteht grosser Speicherbedarf auf dem Call-Stack und die Gefahr für einen Stack Overflow.

### Beispiel: Fibonacci-Zahl

- Fibonacci-Zahlen sind in der Mathematik rekursiv definiert:
    - `f(0)=0`
    - `f(1)=1`
    - `f(n)=f(n-1)+f(n-2)`, für `n>=2`

Rekursive Implementierung:

    public int fib(n) {
        if (n == 0 || n == 1) {
            return 1;
        } else {
            return fib(n - 1) + fib(n - 2);
        }
    }

Probleme einer rekursiven Implementierung:

- Viele rekursive Aufrufe: Komplexitätsklasse `O(2^n)`.
- Mehrfache Berechnung der gleichen Zahlen. (Lösungsansatz: Caching)
- Besser eine iterative Lösung finden!
- _Nicht jedes Problem, das sich rekursiv präsentiert, sollte rekursiv umgesetzt werden!_ 

## Typen von Rekursion

- linear vs. nichtlinear:
    - _lineare Rekursion_: eine Methode ruft sich intern selber auf (z.B. Fakultät)
        - `m() -> m()`
    - _nichtlineare Rekursion_: ein Methodenaufruf führt zu mehreren rekursiven Aufrufen (z.B. Fibonacci)
        - nicht geschachtelt (Fibonacci): _primitiv rekursiv_, `m() -> m(); m();`
        - geschachtelt: _nicht primitiv rekursiv_, `m() -> m(m())`
- direkt vs. indirekt:
    - _Direkte Rekursion_: eine Methode ruft sich _direkt_ selber auf.
    - _Indirekte Rekursion_: eine rekursive Methode ruft sich _indirekt_ selber auf, `m() -> m(n(m()))`

## Beispiel: Permutation

Ein sechs Zeichen langes Passwort bestehend aus den Buchstaben von `A` bis `F`, wobei jeder Buchstabe nur einmal vorkommt, ist gesucht. Gefragt sind die _Permutationen_ (alle möglichen Kombinationen) dieser Buchstaben. Es gibt `6!=720` mögliche Kombinationen:

- `ABCDEF`
- `BACDEF`
- `...`
- `FEDCBA`

Lösungsansatz: Rückführung des Problems (Permutation von `n` Zeichen auf Permutation von einem Zeichen)!

- `A` kombiniert mit den Permutationen von `BCDEF`
    - `B` kombiniert mit den Permutationen von `CDEF`
        - `C` kombiniert mit den Permutationen von `DEF`
