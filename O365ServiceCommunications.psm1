$PublicScripts = Get-ChildItem -Path "$PSScriptRoot\Scripts\Public" -File -Filter *.ps1
$PrivateScripts = Get-ChildItem -Path "$PSScriptRoot\Scripts\Private" -File -Filter *.ps1

$PublicScripts,$PrivateScripts | foreach {
	. $_.FullName
}

$Commands = $PublicScripts.BaseName

Export-ModuleMember -Function $Commands