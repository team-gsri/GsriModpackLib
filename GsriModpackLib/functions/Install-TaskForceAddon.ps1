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
function Install-TaskForceAddon {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Low')]
    Param(
        [string] $PluginSource
    )

    if (-not(Test-Path $PluginSource -PathType Leaf)) {
        throw "$PluginSource not found"
    }
    if (-not (Test-TeamspeakStatus)) {
        throw 'Please close Teamspeak before install'
    }
    if (-not(Test-TaskForceLegacy)) {
        Write-Verbose 'TFAR 0.x found'
        if ($PSCmdlet.ShouldProcess('Performing TFAR 0.x uninstalltion', 'Confirm TFAR 0.x uninstallation ?', '')) {
            Remove-TaskForceLegacy 
        }
    }

    Expand-TaskForceBeta -PluginSource $PluginSource
}