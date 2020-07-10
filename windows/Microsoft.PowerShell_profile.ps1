cls

Write-Host "Windows" -NoNewline
Write-Host " PowerShell" -f Red
Write-Host "Copyright (C) Microsoft Corporation. All rights reserved."
Set-Newline
Set-Newline

Import-Module PSColor
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Misaka
ScreenFetch
