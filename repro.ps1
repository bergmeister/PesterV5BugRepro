if ($PSVersionTable.PSVersion.Major -ne 5) {
    throw 'Major PowerShell version needs to be 5 in order to repro.'
}
if ((Get-Command Invoke-Pester).Version.Major -ne 5) {
    throw 'Major Pester version needs to be 5 in order to repro.'
}

Invoke-Pester -CI -Path @(
    Join-Path $PSScriptRoot 'foo'
    Join-Path $PSScriptRoot 'bar'
)
