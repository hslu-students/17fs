# Einführung

## Was ist ein Algorithmus?

Ein Algorithmus ist ein präzise festgelegtes _Verfahren zur Lösung eines Problems_ bzw. einer Problemklasse; ein Lösungsverfahren (Rezept, Anleitung).

Eigenschaften eines Algorithmus:

1. schrittweises Verfahren
2. ausführbare Schritte
3. eindeutiger nächster Schritt (determiniert)
4. endet nach endlich vielen Schritten (terminiert)

Beispiele für Algorithmen:

- Berechnung des ggT
- Zeichnen von Verbindungslinien
- Sortierung von Zahlen
- Finden des kürzesten Weges zwischen zwei Punkten
- Primzahltest
- Berechnung eines Integrals
- Finden einer Lösung in einem Lösungsraum

Themenbereiche von Algorithmen:

- Algorithmentheorie: Finden guter Lösungsalgorithmen für bestimmte Problemstellungen
- Komplexitätstheorie: Ressourcenverbrauch (Rechenzeit, Speicherbedarf)
- Berechenbarkeitstheorie: Was ist mit einer Maschine lösbar/nicht lösbar?

## Was ist eine Datenstruktur?

Eine Datenstruktur ist ein Konzept zur _Speicherung und Organisation von Daten_. Sie ist durch die Operationen charakterisiert, welche Zugriffe und Verwaltung realisieren.

Beispiele für Datenstrukturen:

- Array: direkter Zugriff, fixe Grösse
- Liste: sequentieller Zugriff, flexible Grösse

## Was ist ein Programm?

Ein Programm kombiniert Algorithmen und Datenstrukturen.

Der Ressourcenverbrauch eines Algorithmus (Laufzeit und Speicherbedarf) hängt von der Verwendung geeigneter Datenstrukturen ab.

Algorithmen operieren auf Datenstrukturen und Datenstrukturen bedingen spezifische Algorithmen.

## Fragen betreffend Algorithmen/Datenstrukturen

1. Für kleine oder grosse Probleme adäquat?
2. Selber entwickeln oder aus einer Bibliothek?
3. Einfach oder schwierig zu verstehen, implementieren und warten?
4. Geringe Laufzeit mit grossem Speicherbedarf oder umgekehrt?

## Beispiel: Berechnung des ggT

Gegeben sind zwei Zahlen, A und B.

1. A sei die grössere der beiden Zahlen (andernfalls tauschen).
2. Setze `A = A - B`
3. Wenn `A != B`: Schritt 1, wenn `A = B`: Fertig

Iterative Lösung (mit impliziter Vertauschung):

    public static int ggT(int a, int b) {
        while (a != b) {
            if (a > b) {
                a = a - b;
            } else {
                b = b - a;
            }
        }
        return a;
    }

Iterative Lösung (mit Modulo-Operator "abgekürzt"):

    public static int ggT(int a, int b) {
        while ((a != b) && (b != 0)) {
            if (a > b) {
                a = a % b;
            } else {
                b = b % a;
            }
        }
        return (a + b);
    }

Rekursive Lösung:

    public static int ggT(int a, int b) {
        if (a > b) {
            ggT(a - b, b);
        } else {
            if (a < b) {
                return ggT(a, b - a);
            } else {
                return a;
            }
        }
    }

## Gleichwertigkeit

- Alle Implementierungen führen zum Ziel und liefern die gleichen Resultate. Sie sind _gleichwertig_.
- Die Anzahl Schleifendurchläufe, arithmetische Operationen und Methodenaufrufe -- und somit Laufzeit und Speicherbedarf -- unterscheiden sich jedoch.

1. Zu jeder Problemklasse gibt es verschiedene konkrete Probleme.
2. Zu jedem konkreten Problem gibt es verschiedene Algorithmen.
3. Zu jedem Algorithmus gibt es verschiedene Implementierungen.

Die Gleichwertigkeit von Algorithmen kann nicht bewiesen werden (Halting-Problem).

## Komplexität

- Die Komplexität (oder Aufwand, Kosten) eines Algorithmus besagt, wie der Ressourcenbedarf von den Eingabedaten abhängt.
- Der Ressourcenbedarf ist eine Funktion der Eingabedaten: `R=f(E)`
    - Rechenzeit: _Zeitkomplexität_
    - Speicherbedarf: _Speicherkomplexität_
- Abhängigkeit von Eingabedaten:
    - Grösse der _Datenmenge_ (z.B. Anzahl zu sortierender Elemente)
    - Grösse der _Datenwerte_ (z.B. Grössse zu prüfender Primzahlen)

Bei der Komplexität eines Algorithmus geht es nicht um die exakte Rechenzeit (einer Implementierung), sondern um das _Anwachsen des Ressourcenbedarfs_ in Abhängigkeit von wachsenden Eingabedaten.

### Beispiel

Laufzeit eines Programms abhängig vom Eingabeparameter `n`:

    public static void task(int n) {
        task1();
        task1();
        task1();
        task1();
        for (int i = 0; i < n; i++) {
            task2();
            task2();
            task2();
            for (int j = 0; j < n; j++) {
                task3();
                task3();
            }
        }
    }

Annahmen:

- Die Methoden `task1`, `task2` und `task3` haben eine konstante und vergleichbare Rechenzeit und sind _nicht_ vom Eingabeparameter `n` abhängig.
- Die Ausführungszeiten der Schleifensteuerung sind vernachlässigbar.

Berechnung: Die Rechenzeit `T` von `task(n)` beträgt `T=f(n)~4+3n+2n²`

Folgerung:

- Für grosse `n` dominiert der Anteil von `n²`.
- Die Funktion ist von der Ordnung `O(n²)`

### Big-O-Notation

- `O`, das landausche Symbol, bringt zum Ausdruck, dass eine Funktion `f(n)` höchstens so schnell wächst wie eine andere Funktion `g(n)`.
- Wird `n` genügend gross gewählt, unterscheiden sich `f(n)` und `g(n)` nur noch durch eine Konstante.

Wichtige Ordnungsfunktionen:

| Bezeichnung   | Notation      | Beispiele                             |
| ------------- | ------------- | ------------------------------------- |
| Konstant      | `O(1)`        | Hashing                               |
| Logarithmisch | `O(ln(n))`    | binäres Suchen                        |
| Linear        | `O(n)`        | Suchen in Text                        |
| `n*log(n)`    | `O(n*log(n))` | schlaues Sortieren                    |
| Polynominal   | `O(n^m)`      | einfaches Sortieren                   |
| Exponential   | `O(m^n)`      | Optimierungen                         |
| Fakultät      | `O(n!)`       | Permutationen, Travelling Salesman    |

### Abschliessende Bemerkungen

- Die Ordnung macht keine Aussage über das Verhalten bei kleinen `n`.
- Konstante Faktoren können bei kleinen `n` relevant sein.
- Die exakte mathematische Analyse vieler Algorithmen ist schwierig oder sogar unmöglich.
- Bei der Analyse muss darum differenziert werden:
    - bester Fall (best case)
    - schlechtester Fall (worst case)
    - mittlerer Fall (average case)
