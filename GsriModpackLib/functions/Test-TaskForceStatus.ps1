function  Test-TaskForceStatus {
    [OutputType([bool])]
    [CmdletBinding()]
    param ()
    
    return (Test-TaskForceLegacy) -and (Test-TaskForceBeta)
}