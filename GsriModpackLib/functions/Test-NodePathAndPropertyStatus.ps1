function Test-NodePathAndPropertyValue {
    [CmdletBinding()]
    param(
        [string]$Node,
        [string]$PropertyName
    )

    if (-not (Test-NodePath $Node)) { 
        Write-Verbose "$Node not found"
        return $false; 
    }    
    $Property = Get-ItemProperty $Node -Name $PropertyName -ErrorAction Ignore
    if ($null -eq $Property) { 
        Write-Verbose "$Node.$PropertyName not found"
        return $false 
    }

    $Value = Get-ItemPropertyValue $Node -Name $PropertyName -ErrorAction Ignore
    if ($null -eq $Value) {
        Write-Verbose "$Node.$PropertyName has no value"
        return $false 
    }

    return Test-NodePath $Value
}