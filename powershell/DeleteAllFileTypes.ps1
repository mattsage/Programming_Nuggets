try
{
	$XMLFiles = Get-ChildItem $Folder -filter config.xml -Recurse
	if ($XMLFiles.count -lt 20)
	{
		Write-Message "Get-ChildItem $Folder -filter config.xml -Recurse | Remove-Item"
		Get-ChildItem $NewGroupshareFolder -filter config.xml -Recurse | Remove-Item
		$DeleteXML = "Success"
	}
}
catch
{
	Write-Message "Error Deleting Config.XML Files"
	Write-Message "$($Error[0])"
	$DeleteXML = "Failed"
}
