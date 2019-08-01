Install-Module Pester -Force
Import-Module .\GsriModpackLib -Force
Invoke-Pester .\GsriModpackLib\tests\*.Tests.ps1 -CodeCoverage .\GsriModpackLib\functions\*.ps1 -OutputFile output.xml -CodeCoverageOutputFile coverage.xml