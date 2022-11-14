# startup commands
oh-my-posh init pwsh | Invoke-Expression

# aliases
Set-Alias n notepad
function grep {$input | out-string -stream | select-string $args}
function cdpr {cd 'D:\programming\'}
function cdrep {cd 'D:\programming\repos'}
function pathlist {(cat ENV:Path) -Split ";"}