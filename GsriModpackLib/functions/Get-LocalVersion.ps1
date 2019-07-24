function Get-LocalVersion {
    [CmdletBinding()]
    param(
        [string]$Path
    )
    $VersionFile = "$Path\version.txt"
    if (-not(Test-Path $VersionFile -PathType Leaf)) {
        Write-Verbose "$VersionFile not found"
        return 0
    }
    $Version = (Get-Content "$Path\version.txt" -ErrorAction SilentlyContinue).Trim()
    Write-Verbose "Local version : $Version"
    return $Version
}