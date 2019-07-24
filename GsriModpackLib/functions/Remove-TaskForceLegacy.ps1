function Remove-TaskForceLegacy {
    [CmdletBinding()]
    Param()

    "$env:APPDATA\TS3Client\plugins\task_force_radio_win64.dll",
    "$env:APPDATA\TS3Client\plugins\task_force_radio_win32.dll" | ForEach-Object {
        Remove-Item $_ -ErrorAction Ignore
        Write-Verbose "$_ removed"
    }
}