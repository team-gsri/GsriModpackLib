function Show-ModpackStatus {
    [OutputType([int])]
    [CmdletBinding()]
    param(
        [string] $Path
    )
    
    $Result = (Test-ModpackVersion -Path $Path)
    return Show-Generic -Message 'Checking GSRI modpack is up-to-date' -Result $Result
}