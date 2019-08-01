function Test-TeamspeakStatus {
    [OutputType([bool])]
    [CmdletBinding()]
    Param()

    $Exe = if ($env:PROCESSOR_ARCHITECTURE -eq 'AMD64') { 'ts3client_win64' } else { 'ts3client_win32' }
    $Count = (Get-Process -Name $Exe -ErrorAction Ignore | Measure-Object).Count
    Write-Verbose "$Exe.exe : $Count processes running"
    return 0 -eq $Count
}