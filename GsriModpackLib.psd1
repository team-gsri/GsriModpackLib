@{
    Author          = 'Arwyn'
    CompanyName     = 'www.gsri.team'
    Copyright       = '(c) 2019 - GSRI - MIT license'

    GUID            = '3cf3c6bb-bc05-45e6-a663-2b77b6ed18b1'
    Description     = 'A powerhsell module dedicated to GSRI modpack management'
    ModuleVersion   = '0.1'

    RootModule      = 'GsriModpackLib.psm1'    
    FunctionsToExport = @(
        'Install-TaskForceAddon',
        'Install-Preset',
        'Write-InstallationStatus'
    )
}