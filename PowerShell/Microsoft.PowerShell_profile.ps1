& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\night-owl.omp.json" --print) -join "`n"))


Import-Module PSReadLine
Import-Module -Name Terminal-Icons

Set-PSReadLineOption -PredictionSource History

Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadLineOption -Colors @{ InlinePrediction = '#875f5f'}

Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -PredictionSource History

Set-PSReadLineKeyHandler -Chord "Ctrl+RightArrow" -Function ForwardWord



