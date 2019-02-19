## Test Branch der Frankfurter Freifunk-Firmware



### v2.5.2-test-0219
- Erstellt am 19.02.2019
- Basis ist [Gluon v2018.2.x] (https://github.com/freifunk-gluon/gluon/commits/v2018.2.x) vom 12.02.2019
  - Linux-Kernel ist 4.9.153 oder 4.14.97 (abhängig vom Routertyp)
- Es handelt sich um ein Service-Update mit kleinen Erweiterungen.
- Als Upgrade-Branch ist in dieser Firmware "stable" eingestellt. Hierdurch werden sich die Knoten mit Test-Firmware auf die neu anstehende Stable-Firmware aktualisieren. 
- Unterstützung neuer Router-Hardware:
   - AVM
     - Fritz!WLAN Repeater 300E
   - Nexx 
     - WT3020AD
     - WT3020F
     - WT3020H
 
 #### Known Issues
 - Es kann Probleme mit 5GHz-Meshverbindungen geben.
 - Teilweise doppelte Anzeige von IPv6-Adressen auf der Map- bzw. Statusseite.
 - Flapping der Anzahl der verbundenen Wifi-Clients.

### v2.5.1-test-0102
- Erstellt am 02.01.2019
- Basis ist das Gluon-Release v2018.2
   - Änderungshistorie siehe [Gluon v2018.2](https://gluon.readthedocs.io/en/v2018.2/releases/v2018.2.html)
   - Linux-Kernel ist 4.9.146 oder 4.14.89 (abhängig vom Routertyp)
- Neue Router-Unterstützung:
   - AVM
     - Fritz!WLAN Repeater 450E
   - OCEDO
     - Koala
   - TP-Link
     - Archer C7 v5
     - TL-WR810N v1
   - Ubiquiti
     - UniFi AC Mesh Pro
   - ZyXEL
     - NBG6616

#### Known Issues
 - Hohe Systemlast. Es wird weiter daran entwickelt.  
 - Es gibt Probleme mit 5GHz-Meshverbindungen.

### v2.4.10-test-1127
- Erstellt am 27.11.2018
- Basis ist das Gluon-Release v2018.1.3
  - Änderungshistorie siehe [v2018.1.3](https://gluon.readthedocs.io/en/v2018.1.x/releases/v2018.1.3.html) und [v2018.1.2](https://gluon.readthedocs.io/en/v2018.1.x/releases/v2018.1.2.html)
  - Linux-Kernel 4.4.153
#### Known Issues
 - Hohe Systemlast. Es wird weiter daran entwickelt.  
 - Es gibt Probleme mit 5GHz-Meshverbindungen.

### v2.4.9-test-0919
- Erstellt am 19.09.2018
- Es handelt sich um ein Serviceupdate mit kleinen Erweiterungen
- Basis ist das Gluon-Release [v2018.1.x](https://gluon.readthedocs.io/en/v2018.1.x/) vom 04.09.2018
- Neues Package [gluon-ssid-changer](https://github.com/Freifunk-Nord/gluon-ssid-changer) hinzu
- Das bereits in der Stable eingesetzte Package [ffffm-ath9k-broken-wifi-workaround](https://github.com/freifunk-ffm/packages/tree/master/ffffm-ath9k-broken-wifi-workaround) wurde wieder eingebunden
#### Known Issues
Hohe Systemlast. Es wird weiter daran entwickelt.

### v2.4.8-test-0909
- Erstellt am 09.09.2018
- Basis ist das Gluon-Release v2018.1.1
- Viele neue Features. Siehe [Gluon-Doku zur v2018.1.1](https://gluon.readthedocs.io/en/v2018.1.1/releases/v2018.1.html)
- Linux-Kernel 4.4.148
- Speichernutzung verbessert 
- Unterstützung neuer Router-Hardware
  - siehe [ Neue Hardwareunterstützung durch Gluon 2018.1](https://gluon.readthedocs.io/en/v2018.1.1/releases/v2018.1.html#added-hardware-support)
  - und siehe [ Neue Hardwareunterstützung durch Gluon 2018.1.1](https://gluon.readthedocs.io/en/v2018.1.1/releases/v2018.1.1.html#added-hardware-support)
#### Known Issues
Hohe Systemlast. Es wird weiter daran entwickelt.

### v2.4.7-test (übersprungen)

### v2.4.6-test-0621
- Erstellt am 21.06.2018
- Basis ist das Gluon-Release v2017.1.8
- Gluon-Änderungshistorie siehe: [Gluon-Doku zur v2017.1.8](https://gluon.readthedocs.io/en/v2017.1.x/releases/v2017.1.8.html#gluon-2017-1-8)

### v2.4.5-test-0527
- Erstellt am 27.05.2018
- Basis ist Gluon v2017.1.x vom 27.05.2018
- Neue Router-Unterstützung:
   - TP-Link
      - Archer C7 AC1750 v4
      - TL-WR940N v5 & v6
   - GL.iNet
      - GL-AR750
   - Ubiquiti 
      - UniFi AC Mesh

#### Known Issues
Es gibt bei einigen Routern immer noch ein Problem mit sehr hoher System-Load. Siehe: [High load on some devices after v2017.1.x update](https://github.com/freifunk-gluon/gluon/issues/1243)

### v2.4.4-test-0430
- Erstellt am 30.04.2018
- Es handelt sich um ein reines Serviceupdate
- Basis ist das Gluon-Release v2017.1.7
- Gluon-Bugfixes siehe: [Gluon-Doku zur v2017.1.7](https://gluon.readthedocs.io/en/v2017.1.x/releases/v2017.1.7.html#gluon-2017-1-7)
#### Known Issues
Es gibt wahrscheinlich immer noch "Out Of Memor" (OOM) Probleme. Siehe: [Gluon-Wiki Out of Memory](https://github.com/freifunk-gluon/gluon/wiki/Out-of-Memory)

### v2.4.3-test-0417
- Erstellt am 17.04.2018
- Es handelt sich um ein reines Serviceupdate
- Basis ist das Gluon-Release v2017.1.6 
- Gluon-Bugfixes siehe: [Gluon-Doku zur v2017.1.6](https://gluon.readthedocs.io/en/v2017.1.x/releases/v2017.1.6.html#gluon-2017-1-6)
#### Known Issues
Es gibt wahrscheinlich immer noch "Out Of Memor" (OOM) Probleme. Siehe: [Gluon-Wiki Out of Memory](https://github.com/freifunk-gluon/gluon/wiki/Out-of-Memory)

### v2.4.2-test-0127
- Erstellt am 27.01.2018
- Basis ist Gluon 2017.1.x (LEDE 17.01)
- Umstellung der Frankfurter Gluon-Packages auf LEDE
- Neue Router-Unterstützung: 
   - TP-Link 
     - TL-WR1043N v5
     - RE450
     - WBS210 v1.20
     - WBS510 v1.20, 
   - Ubiquiti
     -  EdgeRouter X / X-SFP
     -  AirGateway LR
     -  AirGateway PRO
     -  Rocket M2/M5 Ti
     -  UniFi AP LR
   - GL Innovations 
     - GL-AR300M

#### Known Issues
Es gibt ein "Out Of Memor" (OOM) Problem. Siehe: [Gluon-Wiki Out of Memory](https://github.com/freifunk-gluon/gluon/wiki/Out-of-Memory)
### v2.2.1-test-0915
- Erstellt am 15.09.2017
- Basis ist Gluon 2016.2.7
- Zusätzlicher Patch: "TL-WR1043NDv4: Falsche MAC-Adressen bei Geräten mit sehr neuer Stock-Firmware (ab ca. Mai 2017)"
- In der site.conf wurde der Test-Branch wieder aktiviert.

### v2.1.7-test-0804
- Erstellt am 04.08.2017
- Dieses ist eine "hau raus aus der Test, rein in die Stable" Firmware

### v2.1.6-test-0721
- Erstellt 21.07.2017
- Basis ist Gluon 2016.2.6
- Es wird jetzt der DNS-Cache aus dem Gluon-Core verwendet
- IP-Adresse des DNS-Caches angepasst
- Kleine Anpasungen am "help"-Skript

### v2.1.5-test-0627
- Erstellt 27.06.2017
- Basis ist Gluon 2016.2.6
- Nur noch eine einzige fastd-Verbindungen zu den Supernodes.
- 802.11s Mess wieder entfernt

### v2.1.4-test-0514
- Erstellt 14.05.2017
- 802.11s Mesh-SSID ist jetzt "ffffm-mesh-bat14"

### v2.1.3-test-0511
- Erstellt 11.05.2017
- Das Package [ffffm-additional-wifi-json-info](https://github.com/freifunk-ffm/packages/tree/master/ffffm-additional-wifi-json-info) wurde entfernt (wegen Problemen mit der Map)
- Volle Unterstützung des TL-WR841N/ND v12

### v2.1.2-test-0509
- Erstellt 09.05.2017
- 802.11s eingebunden, aber standardmäßig noch deaktiviert
- 802.11s Mesh-SSID ist "ffffm-mesh"
- Testweise Unterstützung des TL-WR841 v12
- Weitere USB-NICs, PCI-NICs und SW-Tools im x86-Image

#### Known Issues
- Die Map (speziell Yanic) hat Probleme die respond-Daten der Router zu parsen

### v2.1.1-test-0502
- Erstellt 02.05.2017
- Basis ist Gluon 2016.2.5 + CVE-2016-10229 Bugfix
- Die feste fastd-MTU ist jetzt 1374 Byte groß (über Port 10003).

### v2.0.10-test-0302
- Erstellt 02.03.2017
- Entfernung des Packages ffffm-fastd-auto-mtu. Jetzt nur noch eine feste fastd-MTU von 1312 Byte.

### v2.0.9-test-0302
- Erstellt 02.03.2017
- fastd-auto-mtu: Versuch eines Bugfixes

#### Known Issues
- Der fastd-auto-mtu Bugfix wirkungslos.


### v2.0.8-test-0219
- Erstellt 19.02.2017
- Basis ist Gluon 2016.2.3
- Umstellung neu fastd-MTU jetzt komplett (1312 und 1374 Byte)
- Bug-Fix: ffffm-bind-button
- Bug-Fix: ffffm-ath9k-broken-wifi-workaround
- Bug-Fix: ffffm-fastd-auto-mtu
- Dieses Firmwarerelease ist ein Kanditat für die neue Stable

#### Known Issues
- Unter besonderen Umständen verbindet sich ein Router nach einem Update nicht mehr mit dem Netz. Ein Reboot löst das einmalige Vergalten.

### v2.0.7-test-0128
- Erstellt 28.01.2017
- Package ffffm-restart-respondd wieder entfernt
- Konfigmodus nur noch in deutsch

### v2.0.6-test-0115
- Erstellt 15.01.2017
- Neues Package ffffm-restart-respondd hinzu
- Neues Package ffffm-bind-button hinzu

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.5-test-0108
- Erstellt 08.01.2017
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 + TL-WR1043ND v4 Unterstützung
- Experementelles Package gluon-disable-wifi-button eingebunden
- Weitere FFFFM IPv6 Prefixes hinzu (Magnus)

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.4-test-1230
- Erstellt 30.12.2016
- Neues Package gluon-dns-cache eingebunden (anstelle von ffffm-dns-cache)

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.3-test-1227
- Erstellt 27.12.2016
- Fix: Autoupdate bei Up-Link-Knoten wieder möglich. 

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.2-test-1221 (gesperrt)
- Erstellt 21.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Region-Code abhängige Images werden jetzt als Europa Versionen gebaut
- Das Package 'ffffm-disable-80211b' wurde wegen neuem Gluon-Main-Package entfernt.
- Das Package "ffffm-banner" optimiert. 
- Vorbereitung erweitertes IPv6 für Clients 
- Anzahl Backbone-Supernodes von 20 auf 10 reduziert
- Wegen dem DL-Server-Umzug, den Link auf den Updateserver angepasst 
- Für einige Router mit mehr als 4MB Flash gibt es jetzt:
  - Unterstützung von vielen USB-NICs (falls USB-Port vorhanden)
  - Unterstützung von USB-Speichermedien (falls USB-Port vorhanden)
  - 'nano' als zusätzlichen Editor
  - tcpdump-mini
- Images für ath10k-Devices werden gebaut
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.1-test-1219 (gesperrt)
- Erstellt 19.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.6-test-99
- Erstellt 11.08.2016
- Dieses ist eine "Raus aus dem Test-, rein in den Stable" Firmware
- Autoupdate-Branch wird automatisch auf "stable" gesetzt
- Autoupdate wird automatisch aktiviert

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.5-test-98
- Erstellt 04.08.2016
- Bugfix: Das aktuelle und abgeschwächtes Package 'ffffm-ath9k-broken-wifi-workaround' wird verwendet 
- Package 'ffffm-diasable-80211b' hinzu
- Alfred entfernt

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4
- Als Gluon-Version wird fälschlicherweise 2015.1.5 ausgegeben. Es ist aber 2016.1.5.
 
### v1.10.4-test-96
- Erstellt 06.07.2016
- Neues Package 'ffffm-enlarge-dns-cache' hinzu
- Bugfix: Updateserver neu verlinkt, auf http://updates.services.ffffm/test/sysupgrade

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4
- Das Package 'ffffm-ath9k-broken-wifi-workaround' erzeugt evtl. zu häufige WLAN-Neuverbindungen der Clients


### v1.10.4-test-92 (nicht automatisch ausgerollt)
- Erstellt 01.07.2016
- Freigegebenes Gluon v2016.1.5
- Neues Package 'ffffm-ath9k-broken-wifi-workaround' hinzu
- Neues Package 'ffffm-additional-wifi-json-info' hinzu
- Die Packages 'gluon-luci-node-role', 'ffffm-luci-switchconfig' und 'gluon-luci-mesh-vpn-fastd' entfernt
- Updateserver neu verlinkt auf http://updates.services.ffffm/stable/sysupgrade

#### Known Issues
- Der Links zu dem Updateserver ist falsch gesetzt. Eine Aktualisierung auf eine neuere Version ist wohl nur noch händisch möglich! :o(
- opkg-Pfad zum OpenWrt Repository ist IPv4
 

### v1.10.3-test-83 (nicht automatisch ausgerollt)
- Erstellt 05.05.2016
- Freigegebenes Gluon v2016.1.4
- Unterstützung von WR841N/ND v11
- Typo in i18n/de.po und i18n/en.po

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.3-test-82 (nicht automatisch ausgerollt)
- Erstellt 30.04.2016
- Freigegebenes Gluon v2016.1.4
- Anpassung WLAN-Treiber: https://gluon.readthedocs.io/en/v2016.1.4/releases/v2016.1.4.html

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.2-test-78
- Erstellt 14.04.2016
- Freigegebenes Gluon v2016.1.3
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd::1
- Das Package ffffm-ebtables-net-rules wieder aktiviert
- Neues Package 'ffffm-banner' hinzu
- Konfigmode-Seite "Auto-MTU" entfernt
- Bugfix: Auto-MTU-Erkennung bei x86-Images 

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### ffmtest-3.62
- Erstellt 02/2016
- Neu: Per uci eingestellte WLAN-Kanäle sind jetzt Update-fest (kein Abhängen von Mesh-Wolken durch Auto-Upgrade) (FFM-Eigenentwicklung)
- Neu: Auto-MTU (FFM-Eigenentwicklung)(z.Z. inkl. GUI)
- Futro CF-Karten Unterstützung
- Typo in Konfig-Modus-Texten (DE/EN)
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- opkg-Pfade hinzu

#### Known Issues
- Auto-MTU funktioniert nach einem Update nicht immer beim x86-Image
- opkg-Pfade sind noch IPv4


### ffmtest-3.27
- Erstellt 02/2016
- Freigegebenes Gluon v2016.1 mit Funktionsstand von fffmdev-3.89
- fastd Ports jetzt wieder 10001 und 10002 (fastd-Links mit grosser MTU jetzt vorhanden)
- Wegen der Übersichtlichkeit wurden auf der Konfig-Seite einige Tabs entfernt (hier gibt es noch Diskussionsbedarf)

### ffmtest-3.10
- Erstellt 11/2015
- Basis war ffmstable-1.10 (Gluon 2014.1)
- Konfig-Modus jetzt in den Sprachen DE und EN
- Verschlüsselung von Mesh-VPN kann abgeschaltet werden (Gluon)
- Wifi-Konfigurationspaket (Gluon)
- Mesh-VPN ist standardmäßig aktiv



## Bekannte Probleme
Mit Gluon v2016.1.x ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die Router-LEDs kommt erst nach ca. 10 Sekunden.


