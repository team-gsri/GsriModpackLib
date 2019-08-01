function Write-ModpackStatus {
    [CmdletBinding()]
    param(
        [string] $Path
    )
    
    $Result = (Test-ModpackVersion -Path $Path)
    return Write-Generic -Message 'Checking GSRI modpack is up-to-date' -Result $Result
}