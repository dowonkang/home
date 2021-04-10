# https://github.com/dahlbyk/posh-git
if (Get-Module -ListAvailable -Name "posh-git") {
    Import-Module posh-git
    $GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
    $GitPromptSettings.DefaultPromptAbbreviateGitDirectory = $true
}
