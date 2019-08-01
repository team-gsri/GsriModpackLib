function Test-TaskForceLegacy {
    [OutputType([bool])]
    [CmdletBinding()]
    param()

    return "$env:APPDATA\TS3Client\plugins\task_force_radio_win64.dll",
    "$env:APPDATA\TS3Client\plugins\task_force_radio_win32.dll" | Test-Paths -Expected 0    
}