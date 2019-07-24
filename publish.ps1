$ModuleName = 'GsriModpackLib'
Install-Module StepSemVer -Force

if ($null -ne (Find-Module $ModuleName -ErrorAction SilentlyContinue)) {
    $CurrentVersion = (Find-Module $ModuleName).Version
    $HasMajor = $env:BUILD_SOURCEVERSIONMESSAGE -like '*#major*'
    $HasMinor = $env:BUILD_SOURCEVERSIONMESSAGE -like '*#minor*'
    $Version = Step-SemVer $CurrentVersion -Major:$HasMajor -Minor:$HasMinor -Build -Revision $env:BUILD_BUILDNUMBER

    $File = ".\$ModuleName\$ModuleName.psd1"
    $Before = 'ModuleVersion[^\n]*'
    $After = "ModuleVersion = '$Version'"
    (Get-Content $File -Raw) -replace $Before, $After | Set-Content $File
}

Publish-Module -Path .\$ModuleName -NuGetApiKey "$env:NUGET_API_KEY"