function Show-TaskForceStatus {
    [OutputType([int])]
    [CmdletBinding()]
    param()

    $Result = Test-TaskForceStatus -Verbose:($PSBoundParameters['Verbose'] -eq $true)
    return Show-Generic -Message 'Checking TFAR plugin installation' -Result $Result    
}