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
function Install-Preset {
    [CmdletBinding()]
    param(
        [string]$Path,
        [string]$Name
    )

    if (-not(Test-Path $Path -PathType Container)) {
        throw "$Path not found"
    }
    Get-ChildItem -Path $Path -Recurse -Filter "@*" |
    Where-Object { -not ($_.FullName -like "*\Campaign\@*") } |
    Write-Preset -Name $Name -Verbose:($PSBoundParameters['Verbose'] -eq $true)
}