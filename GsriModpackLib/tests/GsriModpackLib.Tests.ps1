InModuleScope GsriModpackLib {
    Describe 'Get-LocalVersion' {
        Context 'Not installed' {
            It 'returns zero' {
                Get-LocalVersion -Path TestDrive:\ | Should -Be 0
            }
        }
        Context 'version 13 installed' {
            New-Item TestDrive:\version.txt -ItemType File
            '13' | Set-Content -Path TestDrive:\version.txt
            It 'returns value' {
                Get-LocalVersion -Path TestDrive:\ | Should -Be 13
            }
        }
    }
}