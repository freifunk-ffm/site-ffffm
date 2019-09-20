## Lokale Site-Patches

### Anwendung
Die hier enthaltenen Patches sind so gestaltet, dass die Patch-Anwendungsaufrufe direkt im Gluon-Build-Ordner durchgeführt werden müssen.

Wenn nicht anders angegeben, so müssen die Patches im Build-Ablauf meist vor dem Befehl

    gluon update
angewendet werden.


### Durchführung 
Die hier enthaltenen Patches werden einzeln mittels der folgenden Befehlszeile direkt im Gluon-Build-Ordner angwendet:

    patch -N -p1 -r - -i ./site/patches/NameDesPatches.patch
