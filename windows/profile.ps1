function New-Link($target, $link, [switch]$symbolic) {
	$type = $symbolic ? 'SymbolicLink' : 'HardLink' 
	New-Item -Path $link -ItemType $type -Value $target
}

Set-Alias -Name ln -Value New-Link
Set-Alias -Name vi -Value 'C:\Program Files\Neovim\bin\nvim.exe'

oh-my-posh init pwsh --config "$($env:XDG_CONFIG_HOME ?? "$HOME\.config")\oh-my-posh\config.omp.json" | Invoke-Expression
