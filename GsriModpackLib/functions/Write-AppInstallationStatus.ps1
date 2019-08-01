function Show-AppInstallationStatus {
    [OutputType([int])]
    [CmdletBinding()]
    param(
        [string]$Name,
        [string]$Node,
        [string]$Property = 'InstallLocation',
        [switch]$IsWOW64
    )
    $Result = (Test-AppInstallation -Name $Name -Node $Node -Property $Property -IsWOW64:$IsWOW64 -Verbose:($PSBoundParameters['Verbose'] -eq $true))
    return Show-Generic -Message "Checking app installation $Name" -Result $Result
}