function Show-Generic {
    [OutputType([int])]
    [CmdletBinding()]
    param(
        [string]$Message,
        [bool]$Result
    )
    Write-Host "$Message :`t" -NoNewline
    if ($Result) {
        Write-Host -ForegroundColor Green '[OK]'
        return 0
    } 
    Write-Host -ForegroundColor Red '[FAIL]'
    return 1
}