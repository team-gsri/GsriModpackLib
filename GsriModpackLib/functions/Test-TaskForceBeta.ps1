function Test-TaskForceBeta {
    [OutputType([bool])]
    [CmdletBinding()]
    param()

    return "$env:APPDATA\TS3Client\plugins\TFAR_win64.dll",
    "$env:APPDATA\TS3Client\plugins\TFAR_win32.dll" | Test-Paths -Expected 2
}