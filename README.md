# ft-watchdog
Fiskaltrust Service Watchdog

# was macht das Programm
Der Dienst verrichtet auf unerklärliche weise seinen Dienst nicht mehr. Mit dem Wartchdog wird kontinuierlich geprüpft ob der Dienst noch läuft und ggfs. neu gestartet. Es wird eine Protokolldatei über die Neustarts des betreffenden Dienstes geschrieben.

# installation
Datei ablegen 

- Aufgabenplanung starten

- Einfache Aufgabe erstellen

![image](https://user-images.githubusercontent.com/57839498/221669379-95dd119a-e393-4beb-9b8f-0c3b2b1d69a5.png)

![image](https://user-images.githubusercontent.com/57839498/221669502-789d8cbb-429e-4359-94b8-6dd23ce1e899.png)

![image](https://user-images.githubusercontent.com/57839498/221669689-91cdb457-abaa-4c3f-b449-355e9eb676f7.png)

Programm\Script: %windir%\system32\windowspowershell\v1.0\powershell.exe

Argumente: -NoExit -File D:\Pfad-zur-Datei\FTWatchdog\ftwatchdog.ps1

# log
- Initial wird vermerkt wenn der Watchdog gestartet wurde: 02/27/2023 20:44:34 - Der Fiskaltrust Watchdog wurde gestartet.
- jedes Mal wird geloggt wenn der Dienst neu gestartet werden musste: 02/27/2023 20:44:55 - Der fiskaltrust-2346d45f-ca50-472f-b0c6-7fc4c031d661-Dienst wurde neu gestartet.
