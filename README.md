# ft-watchdog
Fiskaltrust Service Watchdog

### Ideen und Vorschläge an
berge@prohotel-edv.de

### was macht das Programm
Der Dienst verrichtet auf unerklärliche weise seinen Dienst nicht mehr. Mit dem Wartchdog wird kontinuierlich geprüpft ob der Dienst noch läuft und ggfs. neu gestartet. Es wird eine Protokolldatei über die Neustarts des betreffenden Dienstes geschrieben.

# installation
## 1. Script anpassen
- *.ps1 Datei herunterladen
- Bezeichnung des Fiskaltrust Dienstes anpassen
- Pfad zum Log anpassen

## Aufgabenplanung einrichten
- Aufgabenplanung in Windows starten

- Einfache Aufgabe erstellen

- unabhängige Anmeldung + höchste Privilegien

![image](https://user-images.githubusercontent.com/57839498/221669379-95dd119a-e393-4beb-9b8f-0c3b2b1d69a5.png)

-Trigger auf Systemstart

![image](https://user-images.githubusercontent.com/57839498/221669502-789d8cbb-429e-4359-94b8-6dd23ce1e899.png)

-Aktionen anpassen

```Programm\Script: %windir%\system32\windowspowershell\v1.0\powershell.exe```

```Argumente: -NoExit -File D:\Pfad-zur-Datei\FTWatchdog\ftwatchdog.ps1```

![image](https://user-images.githubusercontent.com/57839498/221669689-91cdb457-abaa-4c3f-b449-355e9eb676f7.png)

# log
- Initial wird vermerkt wenn der Watchdog gestartet wurde: ```02/27/2023 20:44:34 - Der Fiskaltrust Watchdog wurde gestartet.```
- jedes Mal wird geloggt wenn der Dienst neu gestartet werden musste: ```02/27/2023 20:44:55 - Der fiskaltrust-123445f-ca50-472f-abcd-7fc4c031d123-Dienst wurde neu gestartet.```
