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

## Überwachungsgebiete

- Gebäude
    - Türen (offen/geschlossen)
    - Kameras
    - Bewegungsmelder
    - Zutritte
- Räume
    - Temperatur
    - Luftfeuchtigkeit
    - Bewegung
    - Rauch
    - Brand
    - Wasserlecks
- Energieversorgung
    - Netzausfall
    - Strom, Spannung, Leistung
    - Leistungsfaktor (Kosinus Phi)
- Geräte
    - Niederspannungsverteilungen
    - Schalterstellungen (Ein/Aus)
    - Stromverbrauch einzerlner Bereiche
    - Sicherungsausfall
    - Kurzschluss
    - Überlast
- Generator
    - Kraftstoffstand (Dieseltank)
    - Funktionsbereitschaft
    - Temperatur
    - Überlast
- Klimageräte
    - Temperaturen
    - Luftfeuchtigkeit
    - Übertemperatur
    - Filterwiderstand
    - Störungen
- USV-Anlagen
    - Normalbetrieb
    - Batteriebetrieb
    - Bypass-Betrieb
    - Ladezustand
    - Batterietemperatur
- Brandmelde- und Löschanlage (Zustandsanzeigen)
    - Löschanlage ausgelöst
    - Übertragungseinrichtung ausgeschaltet
    - Störung
    - Service

## Rechenzenter-Effizienz, PUE-Faktor

- PUE: Power Usage Effectiveness
- Massstab für die Effizienz eines Rechenzentrums
- PUE = gesamte vom Rechenzentrum verbrauchte Energie / Verbrauch der IT-Geräte
    - 1.0: optimal (in kalten Regionen möglich)
    - 1.2: guter Wert (normale Rechenzentren)
    - über 1.4: Optimierungsbedarf
- Stichwort "Green IT"

## Repetitionsfragen

1. Notieren Sie zu 5 beliebigen Bausteinen eines Rechenzentrums die folgenden Punkte:

| Baustein          | Funktionen        | Gefährdet durch       | Abhilfe gegen Gefährdungen |
| ----------------- | ----------------- | --------------------- | -------------------------- |
| Gebäude           | Schutz der Server vor äusseren Einflüssen | Umweltkatastrophen | Resistente Bauweise |
| Klimatisierung    | Schutz vor Überhitzung | Verunreinigung der Filter, Kondenswasser | Filterservice, Abpumpvorrichtung |
| Stromversorgung   | Bereitstellung von elektrischer Energie | Stromausfälle, Netzschwankungen | USV mit Batterie, Diesel-Generatoren |
| Netzwerk          | Verbindung der Komponenten | Ausfall, Überlastung, Überhitzung, Brand | Redundanz, Datensicherung, Lastverteilung, Kühlung, Löschanlage |
| Eingangskontrolle | Gewährung und Verweigerung von Einlass | unautorisierte Personen | Biometrie, Überwachungskameras, Chipkarten, Passwörter, Personenkontrolle |

2. Versuchen Sie den Kostenanteil pro Baustein am gesamten RZ abzuschätzen.
    - Gebäude: ca. 10 Millionen CHF (92%)
    - Klimatisierung: ca. 250'000 CHF (2.3%)
    - Stromversorgung: ca. 100'000 CHF (1%)
    - Netzwerk: ca. 500'000 CHF (4.6%)
    - Eingangskontrolle: 25'000 CHF (0.2%)
    - Summe: 10'875'000 CHF (100%)

3. Was ist der PUE Faktor und was sind die erreichbaren und effektiv erreichten Werte?
    - PUE bedeutet Power Usage Effectiveness und Massstab für die Effizienz eines Rechenzentrums. Er errechnet sich aus der gesamthaft durch das Rechenzentrum verbrauchten Energiemenge geteilt durch die gesamthaft von den IT-Geräten verbrauchte Energie.
        - 1.0: optimal (in kalten Regionen möglich)
        - 1.2: guter Wert (normale Rechenzentren)
        - über 1.4: Optimierungsbedarf
