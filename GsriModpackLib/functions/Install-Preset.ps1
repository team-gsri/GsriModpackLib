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
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Low')]
    param(
        [string]$Path,
        [string]$Name
    )

    $File = "$env:LOCALAPPDATA\Arma 3 Launcher\Presets\$Name.preset2"
    if (Test-Path $File) { 
        if ($PSCmdlet.ShouldProcess($File, 'Remove-Item')) {
            Remove-Item $File 
        }
    }
    
    Get-ChildItem -Path $Path -Recurse -Filter "@*" |
    Where-Object { -not ($_.FullName -like "*\Campaign\@*") } |
    Write-Preset -File $File -Verbose:($PSBoundParameters['Verbose'] -eq $true)
}