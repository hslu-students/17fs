# Systemsoftware

Heute mit Bruno Joho, dem menschgewordenen Deppenleerzeichen.

TODO: Folien herunterladen

## Systemstruktur

Schichten (von innen nach aussen):

- Hardware
- Kernel
- Shell
- Anwendungssoftware (`grep`, `ls`, `vi`, `ed`\* etc.)

\*`ed` is the UNIX standard text editor

### Interrupt-Prioritäten

Von hoch nach tief:

- Maschinenfehler
- Zeitgeber
- Disk
- Netzwerk
- Terminals
- Software-Interrupts

### Systemkern: Untersysteme

- Dateisystem
- Prozess-System

## Prozess-Elemente

- Identifikation (pid)
- Status
    - running
    - TODO
- Priorität
- Programmzähler (pro Thread)
- Memory-Pointer
- Kontextdaten
- I/O-Status-Informationen
- Accounting-Informationen (Statistiken über Ressourcenverbrauch)

### Prozess-Kontrollblock

- enthält die Prozess-Elemente
- enthält alle Informationen, um einen Prozess zu unterbrechen und später wieder
  laufen lassen zu können (als wäre nichts passiert)
- wird durch das OS erzeugt und verwaltet
- ein Schlüsselbaustein, um mehrere Prozesse unterstützen zu können

### Prozess-Status

- Scheduler/Dispatcher: Programm, das von einem Prozess auf einen anderen
  umschaltet
- Tracer: Verfolgt das Verhalten der Prozesse, indem er dessen
  Instruktions-Sequenzen auflistet

### Prozess-Ausführung

???

### Queuing-Modell

- OS durchsucht gesamte Queue, um einen Prozess zu finden, der laufen gelassen
  werden soll (hunderte oder tausende Prozesse in der Queue)
- Trifft ein Event ein, werden alle Prozesse dieser Queue in die "ready"-Queue
  "verschoben" (duch umhängen eines Pointers)
- Queues sind in der Regel verkettete Listen, nicht FIFO-Queues

### Control Tables

- Memory
- Devices (I/O)
- Files
- Processes

### Process Control Structures

OS muss wissen:

- wo Prozess zu finden ist
- die Prozess-Attribute... TODO: p.15
    - Location TODO p.16

### Prozess-Images im virtuellen Memory

TODO: p.17 ff. (eingeschlafen)

TODO: das Bruno-Joho-Paper auf Ilias durchlesen

...

## Unix Process Status

- User Running
- Kernel Running
- Ready to Run, in Memory
- Asleep in Memory
- Ready to Run, swapped
- Sleeping, swapped
- Preempted
- Created
- Zombie

TODO: p.24

## Prozess erzeugen

- `fork()`: erzeugt einen Klon von sich selber

TODO: p.27ff
