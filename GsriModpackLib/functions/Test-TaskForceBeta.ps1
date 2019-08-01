function Test-TaskForceBeta {
    [CmdletBinding()]
    param()

    return "$env:APPDATA\TS3Client\plugins\TFAR_win64.dll",
    "$env:APPDATA\TS3Client\plugins\TFAR_win32.dll" | Test-Paths -Expected 2
}