#Copy files new than date

$RemotePath = "\\pathtoold\files"
$LocalPath = "Z:\newfiles"
$Curr_date = get-date
$Max_days = "-224"
$Max_days2 = ($Curr_date).adddays($Max_days)
echo $Max_days2


#Checking date and then copying file from RemotePath to LocalPath
Foreach($file in (Get-ChildItem $RemotePath))
{
    if($file.LastWriteTime -gt $Max_days2 )
    {

        Copy-Item -Path $file.fullname -Destination $LocalPath -Recurse

    }
    ELSE
    {
    write-host "not copying $file"
    }

}
