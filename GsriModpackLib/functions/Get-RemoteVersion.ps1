function Get-RemoteVersion {
    [OutputType([int])]
    [CmdletBinding()]
    param()

    $Content = (Invoke-WebRequest -URI 'https://mods.gsri.team/version.txt').Content
    if ($null -eq $Content) { throw 'Cannot contact GSRI mods repository' }
    $Version = $Content.Trim()
    Write-Verbose "Remote version : $Version"
    return $Version
}