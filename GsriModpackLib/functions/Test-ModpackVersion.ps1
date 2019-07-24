function Test-ModpackVersion {
    [CmdletBinding()]
    param(
        [string]$Path
    )

    $Remote = Get-RemoteVersion    
    $Local = Get-LocalVersion -Path $Path
    if (0 -eq $Local) {
        Write-Verbose 'Local modpack not detected'
        return $false
    }

    $Compare = Compare-Object $Remote -DifferenceObject $Local
    if ( $null -eq $Compare) {
        Write-Verbose 'Local and remote versions match'
        return $true
    }
    else {
        Write-Verbose 'Local and remote versions mismatch'
        return $false
    }
}