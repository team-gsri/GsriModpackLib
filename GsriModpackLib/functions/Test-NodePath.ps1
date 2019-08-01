function Test-NodePath {
    [OutputType([bool])]
    [CmdletBinding()]
    param(
        [Parameter(Position = 0)]
        [string]$Node
    )

    if (Test-Path $Node -ErrorAction SilentlyContinue) {
        Write-Verbose "$Node found"
        return $true
    }
    else {
        Write-Verbose "$Node not found"
        return $false
    }
}