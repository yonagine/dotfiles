# dotfiles

Windows dotfiles

## Creating symlinks in PowerShell

```powershell
New-Item -ItemType SymbolicLink -path <path to original> -name <the name> -value <path to target>
```

Profile:

```powershell
function make-symlink ($target, $link) {
	New-Item -ItemType SymbolicLink -Path $link -Value $target
}
```

e.g.

1. `cd` to actual file path
2. Cut actual file to dotfiles folder
3. From actual file path, run:

```
make-symlink C:\dotfiles\Microsoft.PowerShell_profile.ps1 .\Microsoft.PowerShell_profile.ps1
```



