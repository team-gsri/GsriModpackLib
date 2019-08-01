function Write-TaskForceStatus {
    [CmdletBinding()]
    param()

    $Result = Test-TaskForceStatus -Verbose:($PSBoundParameters['Verbose'] -eq $true)
    return Write-Generic -Message 'Checking TFAR plugin installation' -Result $Result    
}