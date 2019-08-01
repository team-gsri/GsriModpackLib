function Test-Paths {
    [OutputType([bool])]
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline)]
        [string[]]$Files,
        [int]$Expected
    )
    Begin {
        $Actual = 0
    }
    Process {
        $Files | ForEach-Object {
            if (Test-Path $_ -PathType Leaf) {
                $Actual++
                Write-Verbose "$_ found"
            }
            else {
                Write-Verbose "$_ not found"
            }
        }
    }
    End {
        return $Expected -eq $Actual
    }
}