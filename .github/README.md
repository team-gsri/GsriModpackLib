# modpack-lib

![Azure release status badge](https://vsrm.dev.azure.com/gsri/_apis/public/Release/badge/68602664-8df7-46ae-af76-a9dd2ee88310/1/1)

## What is `modpack-lib`?

This a project is a PowerShell Gallery module used by [french Arma 3 milsim unit GSRI](https://www.gsri.team) to help with our modpack maintenance.

It helps our players and visitors to ensure their modpack installation is not corrupted and help them for their initial setup. It is mainly used by our own set of end-user scripts which can be found in [modpack-tools](https://github.com/team-gsri/modpack-tools)

## Rules and standards

The follwing documents provide additional information on rules and standards applying to this project :

* [MIT license](./LICENSE)
* [GSRI code of conduct](./CODE_OF_CONDUCT.md)
* [Contributing to this project](./CONTRIBUTING.md)

## How to use this library ?

This library is distributed through PowerShell Gallery. If you want to use it, just install and import the module :

```powershell
Install-Module GsriModpackLib
Import-Module GsriModpackLib

Write-InstallationStatus
```

Available functions are listed on the module manifest. You may use `Get-Help` for details on how to use each of them.

## Where do I get help ?

You can ask for support on [our discord server](https://discord.gg/bhMn4jd)
