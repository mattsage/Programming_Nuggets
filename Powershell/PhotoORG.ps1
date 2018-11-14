[reflection.assembly]::loadfile( "C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.Drawing.dll") 

$Files = Get-ChildItem -recurse #-filter *.jpg
foreach ($file in $Files) 
{
  $foo=New-Object -TypeName system.drawing.bitmap -ArgumentList $file.fullname 
  $date = $foo.GetPropertyItem(36867).value[0..9]
  $arYear = [Char]$date[0],[Char]$date[1],[Char]$date[2],[Char]$date[3]
  $arMonth = [Char]$date[5],[Char]$date[6]
  $arDay = [Char]$date[8],[Char]$date[9]
  $strYear = [String]::Join("",$arYear)
  $strMonth = [String]::Join("",$arMonth) 
  $strDay = [String]::Join("",$arDay)
  $DateTaken = $strYear + "-" + $strMonth + "-" + $strDay

  $TargetPath = "C:\Users\matthew.sage\OneDrive - MDSL\_Personal\Pics\" + $strYear + "\" + $DateTaken

  If (Test-Path $TargetPath)
  {
    xcopy /Y/Q $file.FullName $TargetPath
  }
  Else
   {
    New-Item $TargetPath -Type Directory
    xcopy /Y/Q $file.FullName $TargetPath
   }
} 

