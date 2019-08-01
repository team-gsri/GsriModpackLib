function Remove-TaskForceLegacy {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Low')]
    Param()

    "$env:APPDATA\TS3Client\plugins\task_force_radio_win64.dll",
    "$env:APPDATA\TS3Client\plugins\task_force_radio_win32.dll" | ForEach-Object {
        if((Test-Path $_) -and ($PSCmdlet.ShouldProcess($_, 'Remove-Item'))) {
            Remove-Item $_
            Write-Verbose "$_ removed"
        }
    }
}