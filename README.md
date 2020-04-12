# Frankfurter Freifunk-Firmware
### Firmware-Branches
#### Stable
Die aktuelle Stabile Firmware. Die Releases basieren auf den Git-Tags, die unter https://github.com/freifunk-ffm/site-ffffm/releases zu finden sind.
Wenn du selbst eine Stable-Firmware bauen willst, musst du den entsprechenden Tag auschecken und mittels "./ci.sh" bauen.
#### RC
Eine Release Candidate-Firmware ist eine fast fertige Stable-Firmware. Die Änderungen sind bereits auf den stable-Branch gemergt, jedoch noch nicht getaggt. Eine RC-Firmware erhälst du, wenn du auf den Stable-Branch auscheckst und mittels "./ci.sh" baust.
#### Next
Eine Next-Firmware enthält Änderungen, die "Work in Progress" auf dem Next-Branch sind, und ist tendenziell instabil. Sie entsteht aus jedem Build, der auf dem Next-Branch basiert.
#### Experimental
Experimental-Firmware sind alle anderen. Eine Experimental-Firmware wird nicht offiziell angeboten, und kann beispielsweise für Versuche verwendet werden. Beispielsweise wird aus dem experimental-Branch gegen Gluon Master gebaut.

### Allgemeines zum Buildprozess:
- Klone https://github.com/freifunk-gluon/gluon
- Klone dieses Repository in den Unterordner "site"
- Führe ci.sh aus dem Ordner site aus

## Stable-Version der Frankfurter Freifunkfirmware (deprecated)
Die aktuellen Releases findest du unter https://github.com/freifunk-ffm/site-ffffm/releases
### v4.3.1-stable-0325
- Erstellt am 25.03.2020
- Basis ist Gluon [v2020.1.1](https://gluon.readthedocs.io/en/v2020.1/releases/v2020.1.1.html)

### v4.3-stable-0225
- Erstellt am 25.02.2020
- Neue Hardware supported
- Basis ist Gluon [v2020.1](https://gluon.readthedocs.io/en/v2020.1/releases/v2020.1.html)

### v4.2.1-stable-0118
- Erstellt am 18.01.2019
- Fix für v4.2: Domain Director aktiv
- Basis ist Gluon [v2019.1.1](https://gluon.readthedocs.io/en/v2019.1.1/)

### v4.2-stable-0111
- Erstellt am 11.01.2019
- Multidomain-fähig
- Nodeseitige Vorbereitung des Domain Directors
- Wiedereinfügen des "Advanced" Config-Modes
- Basis ist Gluon [v2019.1.1](https://gluon.readthedocs.io/en/v2019.1.1/)

### v4.1-stable-0103
- Erstellt am 03.01.2019
- Nur noch ein BATMAN15-Netz
- "ffffm-keep-radio-channel" entfernt, siehe https://gluon.readthedocs.io/en/v2019.1.x/releases/v2019.1.html#outdoor-mode
- Update NTP-Server
- Angabe der "mcast_rate" für stabileres Mesh
- Basis ist Gluon [v2019.1](https://gluon.readthedocs.io/en/v2019.1/)

### v4.0-stable-1210
- Erstellt am 10.12.2019
- Migriert legacybat_11s auf ffffm_singledomain
- Automatische Migration am 07. Januar 2020 09:00:00 +0100
- Basis ist Gluon [v2019.1](https://gluon.readthedocs.io/en/v2019.1/)

### v3.4-stable-1006
- Erstellt am 06.10.2019
- Neue Hardware und Bugfixes, siehe Gluon 2019.1 Release-Notes
- x86 benutzt jetzt SquashFS, und kann damit zurückgesetzt werden `firstboot`
- Basis ist Gluon [v2019.1](https://gluon.readthedocs.io/en/v2019.1/)

### v3.3.1-stable-2109
- Erstellt am 21.09.2019
- letztes Patch-Release von Gluon 2018
- Neue Hardware und Bugfixes, siehe Gluon 2018.2.3 Release-Notes
- Basis ist Gluon [v2018.2.3](https://gluon.readthedocs.io/en/v2018.2.3/)

### v3.3-stable-0909
- Erstellt am 09.09.2019
- erstes 11s-only-release
- Neue Hardware: Alle Devices, die nur 11s Unterstützen, siehe Gluon-Doku. Highlights u.a.: FritzBox 4040, Netgear EX6150
- Basis ist Gluon [v2018.2.2](https://gluon.readthedocs.io/en/v2018.2.2/)

### v3.2-stable-0903
- Erstellt am 03.09.2019
- Migriert von IBSS auf 11s (Domain legacybat_ibss -> legacybat_11s)
- erstes Release mit multidomain
- Scheduled Domain Switch am 09.09.
- Basis ist Gluon [v2018.2.2](https://gluon.readthedocs.io/en/v2018.2.2/)

### v3.1-stable-0711
- Erstellt am 11.07.2019
- Es handelt sich um ein reines Sicherheits-Update
- Basis ist Gluon [v2018.2.2](https://gluon.readthedocs.io/en/v2018.2.2/)
- Das verwendete Gluon-Release enthält [Bugfixes](https://gluon.readthedocs.io/en/v2018.2.2/releases/v2018.2.2.html#bugfixes) für die Sicherheitslücken [CVE-2019-11477](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-11477), [CVE-2019-11478](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-11478) und
[CVE-2019-11479](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-11479).


### v3.0-stable-0219
- Erstellt am 19.02.2019
- Es handelt sich um ein umfangreiches Technologie-Upgrade auf OpenWrt 18.06 .
- Basis ist [Gluon v2018.2.x](https://gluon.readthedocs.io/en/v2018.2/index.html) in der Version vom 12.02.2019 ([siehe Gluon Git-Repo](https://github.com/freifunk-gluon/gluon/commits/v2018.2.x)).
  - Linux-Kernel 4.9 oder 4.14 (abhängig vom Routertyp).
- Die Nutzung des Arbeitsspeichers wurde verbessert.
- Der Autoupdater ist deutlich robuster.
- Netzstabilisierung durch Filterung von [ARP-Paketen](https://gluon.readthedocs.io/en/v2018.2/package/gluon-ebtables-limit-arp.html#gluon-ebtables-limit-arp).
- Unterstützung [vielfältiger Hardware](https://gluon.readthedocs.io/en/v2018.2/#supported-devices-architectures) (Achtung: nur für IBSS, nicht für reine 802.11s Hardware).
- Neues Package [gluon-ssid-changer](https://github.com/freifunk-nord/gluon-ssid-changer).
- Weiterhin Übernahme aller Feature, wie sie in der [Test-Firmware v2.5.2](https://github.com/freifunk-ffm/site-ffffm/blob/test/README.md#v252-test-0219) enthalten und beschrieben sind.

#### Known Issues
- Teilweise doppelte Anzeige von IPv6-Adressen auf der Map- bzw. Statusseite.
- Teilweise leichtes Flapping der Anzahl der verbundenen Wifi-Clients.
- Es kann zu Probleme mit 5GHz-Meshverbindungen kommen.

### v2.5-stable-1230
- Erstellt am 30.12.2018
- Basis ist Gluon 2016.2.x in der Version vom 10.04.2018 ([siehe Gluon Git-Repo](https://github.com/freifunk-gluon/gluon/commits/v2016.2.x))
- Es handelt sich um ein **wichtiges** Serviceupdate speziell für TP-Link CPE210/510 Router.

Um Frankfurter CPE210/510 Router mit aufgespielter Stable-Firmware <= v2.4 in Zukunft mit neuerlicher Firmware aktualisieren zu können, muß im Vorfeld **zwingend** diese Firmware aufgespielt worden sein.

Frankfurter CPE210/510 Router mit aufgespielter **Test**-Firmware sind nicht betroffen.

Andere Frankfurter Router müssen nicht auf diese Version aktualisiert werden.

### v2.4-stable-0102
- Erstellt am 02.01.2018
- Basis ist Gluon 2016.2.7
- Das Grundrauschen im Netz muß reduziert werden. Das neu hinzugefügte Gluon-Package ['gluon-ebtables-segment-mld'](http://gluon.readthedocs.io/en/stable/package/gluon-ebtables-segment-mld.html) filter dafür im Node die Anteile der "Multicast Listener Discovery v2 (MLDv2)"-Datenpakete heraus.


### v2.3-stable-0916
- Erstellt am 16.09.2017
- Basis ist Gluon 2016.2.7
- Zusätzlicher Patch: "TL-WR1043NDv4: Falsche MAC-Adressen bei Geräten mit sehr neuer Stock-Firmware (ab ca. Mai 2017)"
- Diese Firmware wird nicht komplett ausgerollt. Lediglich das Factory-Binarie für den TP-Link Router TL-WR1043v4 wird auf dem Download-Server bereitgestellt.


### v2.2-stable-0731
 - Erstellt am 31.07.2017
 - Basis ist Gluon 2016.2.6 -> Änderungshistorie: [Gluon 2016.2.4](http://gluon.readthedocs.io/en/latest/releases/v2016.2.4.html), [Gluon 2016.2.5](http://gluon.readthedocs.io/en/latest/releases/v2016.2.5.html), [Gluon 2016.2.6](http://gluon.readthedocs.io/en/latest/releases/v2016.2.6.html)
 - Unterstützung neuer Hardware: TL-WR841N/ND v12
 - Entfernung des Packages ffffm-fastd-auto-mtu. Jetzt nur noch eine feste fastd-MTU
 - Die fastd-MTU hat eine Größe von 1374 Byte (über Port 10003).
 - Weitere USB-NICs, PCI-NICs und SW-Tools für das x86-Image
 - Es wird jetzt der DNS-Cache aus dem Gluon-Core verwendet
 - IP-Adresse des DNS-Caches wurde angepasst
 - Kleine Anpassungen an den 'help'-Skripten

#### Known Issues
 - Router, welche nur per Mesh angebunden sind, können zur Zeit auf der Konsole keine IPv4-Verbindungen aufbauen. Wenn wir wieder ein NAT64 im Backbone haben, wird dieses jedoch wieder möglich sein.

<!--
### v2.2-stable-0729
 - Erstellt 29.07.2017
 - Release-Candidate
 - Release-Bezeichnung wurde korrigiert -> v2.2-stable-0729/gluon-2016.2.6

### v2.2-stable-0721
 - Erstellt 21.07.2017
 - Release-Candidate
-->

### v2.1-stable-0220
 - Erstellt 20.02.2017
 - Basis Gluon 2016.2.3 -> Änderungshistorie: [Gluon 2016.2](http://gluon.readthedocs.io/en/latest/releases/v2016.2.html), [Gluon 2016.2.1](http://gluon.readthedocs.io/en/latest/releases/v2016.2.1.html), [Gluon 2016.2.2](http://gluon.readthedocs.io/en/latest/releases/v2016.2.2.html), [Gluon 2016.2.3](http://gluon.readthedocs.io/en/latest/releases/v2016.2.3.html)
 - Unterstützung neuer Router-Hardware (z.B. Archer C5/C7, TL-WR841ND v11 EU Version, TL-WR1043ND v4, TL-WR842ND v3, TL-WR940N v4, TL-WA901ND v4, TL-WR710N v2.1, CPE210/510 EU Version, WA801ND v3, UniFi AP AC Lite/Pro, Raspberry Pi 1 und 2)
 - Region-Code abhängige Images werden jetzt als Europa-Versionen gebaut
 - Images für ath10k-Devices werden gebaut
 - x86-Images nur noch als x86-generic und x86-64. Da ist jetzt alles Notwendige zur Virtualisierung dabei ([siehe hier](http://gluon.readthedocs.io/en/v2016.2.3/user/x86.html)).
 - Um Airtime zu sparen wurde 80211b deaktiviert
 - Vorbereitung erweiterte IPv6-Nutzung für Clients
 - Durchsatzoptimierungen bei Unitymedia-Uplinks mittles größerer fastd-MTUs (1312 und 1374 Byte)
 - Router-Konfigmodus nur noch auf deutsch
 - Neues Package [gluon-dns-cache](https://github.com/freifunk-ffm/packages/tree/master/gluon-dns-cache) (FFM-Eigenentwicklung) anstelle von ffffm-enlarge-dns-cache hinzu.
 - Neues Package [ffffm-button-bind](https://github.com/freifunk-ffm/packages/tree/master/ffffm-button-bind) hinzu (FFM-Eigenentwicklung)
 - Package [ffffm-ath9k-broken-wifi-workaround](https://github.com/freifunk-ffm/packages/tree/master/ffffm-ath9k-broken-wifi-workaround) wurde optimiert
 - Package [ffffm-banner](https://github.com/freifunk-ffm/packages/tree/master/ffffm-banner) wurde verbessert (optimierung an den Befehlen "nodeinfo" und "v4up")
 - Für einige Router mit mehr als 4MB Flash gibt es jetzt:
   - Unterstützung von einigen USB-NICs (falls USB-Port vorhanden)
   - Unterstützung von USB-Speichermedien (falls USB-Port vorhanden)
   - 'nano' als zusätzlichen Editor
   - tcpdump-mini
 - opkg sollte mit angepasster Backbone-Infrastruktur demnächst auch auf IPv6-Mesh-Routern funktionieren

### v2.0-stable-34
- Erstellt 31.07.2016
- Freigegebenes Gluon v2016.1.5
- OpenWrt Chaos Calmer 15.05
- Basis bzw. Übernahme der Site-Konfiguration aus v1.10.4-test-96
- Neues Bezeichnungsschema der Firmware
- Announced und Alfred entfernt.
- radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
- 'prefix6' ist jetzt 'fddd:5d16:b5dd:0::/64'
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd:ffff::1
- fastd Ports 10001 und 10002 (für kleine/große MTU)
- Mesh-VPN Verschlüsselung 'salsa2012+gmac' entfernt
- Mesh-VPN ist standardmäßig aktiv
- Konfig-Modus in den Sprachen DE und EN
- Keine Anzeige des Router-Keys am Ende der Router-Konfiguration
- opkg-Pfade für Paket-Nachinstalltionen hinzu
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- Neue [Gluon-Pakete](https://github.com/freifunk-ffm/packages/tree/master/ffffm):
  - 'ffffm-fastd-auto-mtu' Auto-MTU 1280/1426 Byte (FFM-Eigenentwicklung)
  - 'ffffm-keep-radio-channel' WLAN-Kanäle sind jetzt Update-fest (FFM-Eigenentwicklung)
  - 'ffffm-ath9k-broken-wifi-workaround' (FFM-Eigenentwicklung)
  - 'ffffm-disable-80211b' (FFM-Eigenentwicklung)
  - 'ffffm-additional-wifi-json-info' Map-Anzeige von Wifi-Kanal und -Airtime (FFM-Eigenentwicklung)
  - 'ffffm-enlarge-dns-cache' (FFM-Eigenentwicklung)
  - 'ffffm-banner' Kommandos help, nodeinfo und v4up  (teilweise FFM-Eigenentwicklung)
  - 'ffffm-ebtable-net-rules' optimierter Paketfilter (FFM-Eigenentwicklung)

#### Known Issues
- opkg-Pfad zum globalem OpwnWrt Repository ist lediglich IPv4
- Das Skript 'v4up' funktioniert nicht mehr

### ffmstable-1.10
- Erstellt Ende 2015
- Gluon 2014.1
- OpenWrt Barrier Breaker
