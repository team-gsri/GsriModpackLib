<#
.SYNOPSIS
.DESCRIPTION
.PARAMETER x
.PARAMETER y
.INPUTS
.OUTPUTS
.EXAMPLE
.EXAMPLE
.EXAMPLE
.EXAMPLE
.LINK
.LINK
.NOTES
#>
function Show-InstallationStatus {
    [OutputType([bool])]
    [CmdletBinding()]
    param(
        [string]$Path = '.'
    )

    $Uninstall_Path = 'Microsoft\Windows\CurrentVersion\Uninstall'
    $status += Show-AppInstallationStatus -Name 'Steam' -Node 'Valve\Steam' -Property 'InstallPath' -IsWOW64
    $status += Show-AppInstallationStatus -Name 'Arma 3' -Node "$Uninstall_Path\Steam App 107410"
    $status += Show-AppInstallationStatus -Name 'Arma 3 Sync' -Node "$Uninstall_Path\{F097E7D7-D093-4394-9EED-43AFCCD12B7A}_is1" -IsWOW64
    $status += Show-AppInstallationStatus -Name 'TeamSpeak' -Node "$Uninstall_Path\TeamSpeak 3 Client"
    $status += Show-ModpackStatus -Path $Path
    $status += Show-TaskForceStatus

    if (0 -lt $status) {
        Write-Host -ForegroundColor Red "`n *** Your installation is incorrect *** `n"
        return $false
    }
    else {
        Write-Host -ForegroundColor Green "`n *** Your installation is valid *** `n"
        return $true
    }
}