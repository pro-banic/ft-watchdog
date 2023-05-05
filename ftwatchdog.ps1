# Source: https://github.com/pro-banic/ft-watchdog

# Name des Dienstes, der überwacht werden soll
$serviceName = "fiskaltrust-1236d45f-cr50-422f-abc-7fc4c031d123"

# Pfad zur Logdatei
$logFile = "C:\FTWatchdog\FiskaltrustService.log"

# Schreibe Eintrag in das Log-File, dass der Watchdog gestartet wurde
Add-Content -Path $logFile -Value "$(Get-Date) - Der Fiskaltrust Watchdog wurde gestartet."

# Überprüfen, ob der Dienst ausgeführt wird, und gegebenenfalls neu starten
while ($true) {
    # Überprüfen, ob der Dienst ausgeführt wird
    $service = Get-Service -Name $serviceName
    if ($service.Status -ne "Running") {
        # Wenn der Dienst nicht ausgeführt wird, starte ihn neu
        Restart-Service -Name $serviceName
        # Schreibe einen Eintrag in das Log-File
        Add-Content -Path $logFile -Value "$(Get-Date) - Der $serviceName-Dienst wurde neu gestartet."
    }
    # Warte 60 Sekunden, bevor der Loop erneut ausgeführt wird
    Start-Sleep -Seconds 60
    # Setze die Variable $logWritten auf $true, wenn der Loop zum ersten Mal ausgeführt wird
    if (-not $logWritten) {
        $logWritten = $true
        # Schreibe einen Eintrag in das Log-File, dass der Watchdog gestartet wurde
        Add-Content -Path $logFile -Value "$(Get-Date) - Der Fiskaltrust Watchdog wurde gestartet."
    }
}
