function Write-Preset {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline)]
        [object[]]$Mods,
        [string]$File
    )
    Begin {
        $PresetDate = Get-Date -Format "o"

        Add-Content -Path $File '<?xml version="1.0" encoding="utf-8"?>'
        Add-Content -Path $File '<addons-presets>'
        Add-Content -Path $File "<last-update>$PresetDate</last-update>"
        Add-Content -Path $File '<published-ids>'
    }
    Process {
        $Mods | ForEach-Object {
            Write-Verbose $_.FullName
            Add-Content -Path $File "<id>local:$($_.FullName)</id>"            
        }
    }
    End {
        Add-Content -Path $File '</published-ids>'
        Add-Content -Path $File '<dlcs-appids />'
        Add-Content -Path $File '</addons-presets>'
    }
}