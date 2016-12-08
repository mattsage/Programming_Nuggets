$StartTime = Get-Date
#Script Goes here
Start-Sleep -s 10
#End Script
$EndTime = Get-Date
"Elapsed Time: $(($EndTime-$StartTime).totalseconds) seconds"
