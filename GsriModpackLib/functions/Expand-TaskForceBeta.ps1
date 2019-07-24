function Expand-TaskForceBeta {
    [CmdletBinding()]
    Param(
        [string] $PluginSource
    )

    $PluginPath = Split-Path -Parent $PluginSource
    $PluginZip = "$PluginPath\task_force_radio.zip"
    Copy-Item $PluginSource $PluginZip
    Expand-Archive -Path $PluginZip -DestinationPath "$env:APPDATA\TS3Client" -Force
    Remove-Item "$env:APPDATA\TS3Client\package.ini" -ErrorAction Ignore
    Remove-Item $PluginZip -ErrorAction Ignore
}