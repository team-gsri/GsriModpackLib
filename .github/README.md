# GsriModpackLib

*   [![GitHub](https://img.shields.io/badge/-GitHub-lightgrey)](https://github.com/team-gsri/GsriModpackLib) [![Azure DevOps](https://img.shields.io/badge/-Azure_DevOps-lightgrey)](https://dev.azure.com/gsri/GsriModpackLib/) [![Codacy](https://img.shields.io/badge/-Codacy-lightgrey)](https://app.codacy.com/project/ArwynFr/GsriModpackLib/dashboard) [![PSGallery](https://img.shields.io/badge/-PowerShell_Gallery-lightgrey)](https://www.powershellgallery.com/packages/GsriModpackLib)
*   ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/team-gsri/GsriModpackLib) ![GitHub last commit](https://img.shields.io/github/last-commit/team-gsri/GsriModpackLib)
*   ![Azure DevOps builds](https://img.shields.io/azure-devops/build/gsri/GsriModpackLib/4) ![Azure DevOps tests](https://img.shields.io/azure-devops/tests/gsri/GsriModpackLib/4) ![Codacy grade](https://img.shields.io/codacy/grade/5779ec34ae84475092900e423428ec29)
*   ![PowerShell Gallery](https://img.shields.io/powershellgallery/v/GsriModpackLib) ![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/GsriModpackLib)

## What is GsriModpackLib

This a project is a PowerShell Gallery module used by [french Arma 3 milsim unit GSRI](https://www.gsri.team) to help with our modpack maintenance.

It helps our players and visitors to ensure their modpack installation is not corrupted and help them for their initial setup. It is mainly used by our own set of end-user scripts which can be found in [modpack-tools](https://github.com/team-gsri/modpack-tools)

## Rules and standards

The follwing documents provide additional information on rules and standards applying to this project :

*   [MIT license](./LICENSE)
*   [GSRI code of conduct](https://github.com/team-gsri/CodeOfConduct/blob/master/.github/CODE_OF_CONDUCT.md)
*   [Contributing to this project](./CONTRIBUTING.md)

## How to use this library

This library is distributed through PowerShell Gallery. If you want to use it, just install and import the module :

```powershell
Install-Module GsriModpackLib
Import-Module GsriModpackLib

Show-InstallationStatus
```

Available functions are listed on the module manifest. You may use `Get-Help` for details on how to use each of them.

## Where to get help

You can ask for support on [our discord server](https://discord.gg/bhMn4jd)
