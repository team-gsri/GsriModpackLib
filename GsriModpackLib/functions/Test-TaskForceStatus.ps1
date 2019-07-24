function  Test-TaskForceStatus {
    [CmdletBinding()]
    param ()
    
    return (Test-TaskForceLegacy) -and (Test-TaskForceBeta)
}