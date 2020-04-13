$OneDrive = (Get-Item -Path Env:OneDrive).value
$Scripts = $OneDrive + "\scripts"

Import-Module posh-git
Import-Module PSColor
Import-Module oh-my-posh
Import-Module get-quote
Set-Theme Pretzel

# Preload Libraries
Get-ChildItem $Scripts\*.ps1 | ForEach-Object { . $_.FullName
  Write-Host ".sourcing $($_.Name)" -ForegroundColor DarkYellow
}

Write-Host ""
Get-Quote