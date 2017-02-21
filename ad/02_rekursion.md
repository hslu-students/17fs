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
