function Test-AppInstallation {
    [CmdletBinding()]
    param(
        [string]$Name,
        [string]$Node,
        [string]$Property,
        [switch]$IsWOW64
    )

    $RegistryPath = 'HKLM:\SOFTWARE'
    $IsWin64 = ($env:PROCESSOR_ARCHITECTURE -eq 'AMD64')
    
    if ($IsWin64 -and $IsWOW64) {
        Write-Verbose 'Looking for a WOW64 application'
        $RegistryPath = "$RegistryPath\WOW6432Node"
    }
        
    $RegistryPath = "$RegistryPath\$Node"
    Write-Verbose "Searching for $RegistryPath.$Property"
    return Test-NodePathAndPropertyValue -Node $RegistryPath -Property $Property
}