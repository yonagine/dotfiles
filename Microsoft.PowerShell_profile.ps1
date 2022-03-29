function prompt {
    $prompt = Write-Prompt "[" -ForegroundColor Cyan
    $prompt += & $GitPromptScriptBlock # ensure posh-git is installed
    $prompt += Write-Prompt "]" -ForegroundColor Cyan
    $prompt += Write-Prompt "`r`n 漣" -ForegroundColor Blue

    if ($prompt) {
        "$prompt "
    }
    else {
        " "
    }
}

function poshgit_init {
    Import-Module posh-git
    $GitPromptSettings.DefaultPromptPath.ForegroundColor = 'Cyan'
    $GitPromptSettings.BranchColor.ForegroundColor = 'Blue'
    $GitPromptSettings.DefaultPromptSuffix = ""
    $GitPromptSettings.BeforeStatus.ForegroundColor = 'Blue'
    $GitPromptSettings.AfterStatus.ForegroundColor = 'Blue'
    $GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $false
    $Env:GOPATH = "$HOME\go"
}

function lsd { ls -Directory }
function rbo { ls bin,obj -recurse | rm -confirm -force -recurse }
function proj { cd C:\Projects }
function make-symlink ($target, $link) {
	New-Item -ItemType SymbolicLink -Path $link -Value $target
}

poshgit_init