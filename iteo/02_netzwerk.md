# Netzwerke im Rechenzentrum

Netzwerktopologie:

- Provider
    - Angebot
    - Speed
    - Technik
- Grenze
    - Router
    - Firewall
    - IDP (Intrusion Detection and Protection)
    - Redundanz
- DMZ (Demilitarized Zone)
    - Web-Services
    - Authentifizierung
    - Dienste
- Lokales Netzwerk (LAN)
    - Topologien
    - Speed
    - Trennungen
    - Services

Private IP-Bereiche:

- 10.0.0.0/8
- 172.16.0.0/12
- 192.168.0.0/16

- Router
    - oft in Firewall oder Layer-3-Switches eingebaut
    - Arbeitet mit IP-Paketen, setzt öffentliche in private Adressen um (NAT)
    - Anbendung verschiedener Netze
    - optionale Weiterleitung bei redundanten Leitungen
    - Aufrechterhaltung von QOS durch spezifische Weiterleitungen (aufgrund Pakettyp, Protokoll)
    - kann VPN-Endpunkt sein
    - Anpassung an unterschiedliche Netzwerktechniken
- Firewall
    - Sicherheitsbaustein, Teil des Sicherheitskonzepts
    - Übernimmt meist auch Routing-Funktionen
    - regelbasierte Sperrung/Weiterleitung von Paketen
    - VPN-Endpunkt mit Authentifizierung
    - kann auf allen OSI-Schichten arbeiten
- IDP
    - IDS (Intrusion Detection System) + IDP (Intrusion Prevention System) = IDP (Intrusion Detection and Protection)
    - Eindringungsversuche erkennen (Muster, DOS, Fakes, Portscan, IP-Spoofing)
    - Rechenintensiv, oft separate Hardware
    - über 1Gbit/s-Netzwerke können nicht komplett überwacht werden (mehrere Geräte oder Heuristik)
- DMZ
    - demilitarized zone
    - Geschützer Bereich, in dem bestimmte Zugriffe (www, Mail, FTP) erlaubt weden
    - 1 oder 2 Firewalls
    - Model 1: eine Firewall, an der Internet, DMZ und Inside-Zone hängen
    - Model 2: zwei Firewalls: Internet, Firewall, DMZ, Firwall, Inside Zone
    - bei Banken müssen die beiden Firewalls verschiedener Hersteller sein
- Netzwerk-Redundanz
    - 1 Provider/2 Zugänge
    - 2 Provider/je 1 Zugang
    - Ausfallüberwachung nötig
    - Getrennte Wege
    - verschiedene Medien
    - Loadbalancing
- LAN-Strukturen (physisch)
    - TOR: top of rack (jedes Rack hat seine eigenen Switches)
        - neue Switches für jedes neue Rack notwendig
    - EOR: end of row (Racks nur über Patchpanels verbunden)
        - einfacher, solange genügend Ports vorhanden sind (aber mehr Verkabelungsaufwand nötig)
- LAN-Strukturen
    - mehrere Switch-Ebenen
    - peering/peripherie
    - backbone/spine/core
    - leaf (Anschluss für Server)
- MPLS: multiprotocol label switching
    - VPN-ähnliche Strukturen zur Verbindung zusammengehöriger Netzwerke ohne Rücksicht auf IP-Segmente
    - Paketvermittlung durch den Provider aufgrund von Labels in den Paketen
        - QOS (quality of service)
        - COS (class of service)
            - realtime (voice)
            - best effort
            - bulk (grosse Mengen)
            - business critical
            - video
- SDN: Software Defined Networking
    - zwei Ebenen
        - Control Plane
        - Data Plane
    - Netzwerke werden via Management-Software erstellt
    - Netze sind teilweise virtuell basierend auf einem Trägernetzwerk und werden mit speziellen Protokollen konfiguriert und verbunden (möglicher Standard: Openflow)
- VLAN: virtual LAN
    - Bildung getrennter Netze auf gemeinsamer Hardware
    - tagged (VLAN-Tag im Ethernet-Frame) oder untagged (über Switch gesteuert)
    - Trunk: Verbindung zweier Switches

usw.-
