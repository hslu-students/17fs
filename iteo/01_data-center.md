# Das Data Center

## Bestandteile Data Center

- Lüftung (Zu- und Abluft, Wärmetauscher)
- Hochwasserschutz (erhöhte Bauweise)
- Zutrittskontrolle an den Eingängen, Überwachungskameras
- Stromversorgung
    - USV: unterbrechungsfreie Stromversorgung (Energiespeicher: Batterien)
    - Dieselgenerator als Notstromaggregat (Energiespeicher: Dieseltank), mit Kühlung und Abluft
- Server in Serverracks
- Stromverteilung
- Datenleitung/Netzwerk
- Löschanlagen
- Administration/Überwachung

## Klimatisierung

- optimale Temperatur: 26°C
    - keine Schäden bei leicht erhöhter Raumtemperatur (gegenüber 21°C)
    - Wärmeenergie geht von selber an die Umgebung (Heizung benachbarter Räumlichkeiten)
    - im optimalen Leistungsbereich der Klimaanlagen
    - Kondenswasser bei zu tiefen Temperaturen
- Staub und Pollen können schädlich sein
    - verstopfen Ventilatoren (gesteigerter Stromverbrauch durch erhöhte Kühlleistung)
    - Metallpartikel können Schäden an Hardware verursachen
- Probleme
    - Kondenswasser: Ablauf kann verstopfen, Kondenswasser auslaufen
    - Filterkontrolle: verstopfte Filter verursachen erhöhte Leistungsaufnahme
    - zusätzlicher Energieverbrauch
    - Luftverteilung
    - Überwachung
- Kühlluftverteilung
    1. Free-Flow-Systeme
        - Warme Luft steigt auf, kalte Luft sinkt ab
        - Gemischte Lufttemperatur
        - einfach
        - Problem: möglicher Wärmekurzschluss (warme Abluft wird als Kühlluft angesogen)
    2. Kalt- oder Warmgang-Einhausung
        - Trennung von Warm- und Kaltluft
        - dadurch bessere Energieeffizienz
        - aber teurer im Aufbau
        - Front der Racks sollten komplett abgeschlossen sein, um Warm- und Kaltluft voneinander zu trennen
- Immersion Cooling: flüssigkeitsgekühlte Systeme
    - mit Wärmetauscher und Flüssigkeit in Leitungskabel
    - oder komplett in Öl eingelegt

## EDV-Einbau

- Serverracks
    - verschiedene Höhen (21-49U), Breiten (0.6-1m) und Tiefen (0.8-1.2m)
        - 1 HE = 1 U = 1.75 Zoll = 44.45 mm
    - auch mit integrierter Kühlung
    - Zuleitungen: oben, unten, seitlich
    - Standard: 19 Zoll (48.26 cm)
- Netzwerk
    - Kupfer (gegenwärtig stark verbreitet)
    - Glasfaser (löst Kupfer derzeit ab)
- Klimageräte, USV und Batterieschränke
    - Batterien sind sehr schwer, spezielle Racks/Bodenverstärkung erforderlich
- Kühlleitungen und Überwachungsgeräte

## Kritische Punkte

- Einbruch, Diebstahl, Vandalismus, Sturmschäden, Trümmer
    - bauliche Massnahmen: stabile Aussenhülle
    - verschlossen mit Zaun
    - teilweise fernab von anderen Gebäuden
    - keine oder kaum Fenster
- Fremdzugriff
    - Zutrittskontrolle (biometrisch, Chip-Karten, Passwörtern)
    - Abhörsicherheit (elektromagnetische Abschirmung, keine mobilen Endgeräte mit Netzwerkverbingungen zulassen, keinen WiFi-Access-Point)
    - Firewall
- Feuer und Rauch
    - Branderkennung
    - Löschanlage: CO2 (Vorwarnzeit zur Flucht nötig!), Verringerung des Sauerstoffanteils der Luft auf ca. 10% (nicht tödlich, aber das Feuer verlöscht) durch Stickstoff (gefährlicher und günstig) oder Inergen (weniger gefährlich und teurer)
    - Handfeuerlöscher: CO2
        - Feuer benötigt: Sauerstoff, Hitze und Brennstoff 
    - Abschottung einzelner Zellen
    - automatische Abschaltung der Klimaanlage damit der Rauch nicht verteilt wird
    - kein PVC (bildet Salzsäure!) verwenden
- Netzausfälle, Netzstörungen
    - Netzfilter (in Netzteilen integriert)
    - vorgeschaltete USV mit Batterien
    - Diesel-Generatoren
- Elektromagnetische Störfelder
    - EMP: elektromagnetische Impulse (durch Atombomben oder spezielle Generatoren verursacht), kann Geräte zerstören
    - Abschirmung (kann teuer sein)
    - metallische Aussenfassade
    - Blitzableiter
- Staub, Schmutz, Wasser
    - Filteranlagen
    - Schmutzschleusen, spezielle Teppiche
    - erhöhte Bauweise
    - Standortwahl (nicht in Nähe von Gewässern oder mit Steinschlag und Lawinen)
    - Pumpanlagen zum Abpumpen bei Überschwemmungen

## Überwachung

(TODO Folie 13 und 14)

- Gebäude
- Räume
- Energieversorgung
- Geräte
- Generator
- Klimageräte
- USV-Anlagen
- Brandmelde- und Löschanlage

## Rechenzenter-Effizienz, PUE-Faktor

- PUE: Power Usage Effectiveness
- Massstab für die Effizienz eines Rechenzentrums
- PUE = gesamte vom Rechenzentrum verbrauchte Energie / Verbrauch der IT-Geräte
    - 1.0: optimal (in kalten Regionen möglich)
    - 1.2: guter Wert (normale Rechenzentren)
    - >1.4: Optimierungsbedarf
- Stichwort "Green IT"

## Repetitionsfragen

1. Notieren Sie zu 5 beliebigen Bausteinen eines Rechenzentrums die folgenden Punkte:

| Baustein      | Funktionen        | Gefährdet durch       | Abhilfe gegen Gefährdungen |
| ------------- | ----------------- | --------------------- | -------------------------- |
| Gebäude       | Schutz der Server vor äusseren Einflüssen | Umweltkatastrophen | Resistente Bauweise |
| Klimatisierung | Schutz vor Überhitzung | Verunreinigung der Filter, Kondenswasser | Filterservice, Abpumpvorrichtung |
| Stromversorgung | Bereitstellung von elektrischer Energie | Stromausfälle, Netzschwankungen | USV mit Batterie, Diesel-Generatoren |
| Netzwerk | Verbindung der Komponenten | Ausfall, Überlastung, Überhitzung, Brand | Redundanz, Datensicherung, Lastverteilung, Kühlung, Löschanlage |
| Eingangskontrolle | Gewährung bzw. Verweigerung von Einlass | nicht-autorisierte Personen mit bösen Absichten | Biometrie, Überwachungskameras, Chipkarten, Passwörter, Personenkontrolle |

2. Versuchen Sie den Kostenanteil pro Baustein am gesamten RZ abzuschätzen
3. Was ist der PUE Faktor und was sind die erreichbaren und effektiv erreichten Werte?
