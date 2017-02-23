# Einführung


- Konstruktionsfehler können katastrophale Auswirkungen haben, auch bei Software.
    - Systembau durch Konzept vorbereiten
    - Zugrunde liegende Modelle genau recherchieren
    - Kontept sorgfältig und nachvollziehbar ausarbeiten

## Aufgabe 1.2: Explosion der Rakete Ariane 5

Welche Fehlentscheidungen führten letztlich zur Katastrophe?

- Übernahme von Code von der Ariane 4
- Fehlende Ausnahmebehandlung
- Fehlende Spezifikationen
- Unzureichende Test des Flugkontrollsystems

Welches war der entscheidende Design- respektive Konstruktionsfehler, ohne welchen der Flug wahrscheinlich trotz den anderen Fehlern hätte fortgesetzt werden können

- Variable für die horizontale Geschwindigkeit war zu klein bemessen (hat Limiten überschritten)
- Diagnosedaten wurden als Flugdaten interpretiert auf dem Hauptcomputer
