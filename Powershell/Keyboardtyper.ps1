Add-Type -AssemblyName System.Windows.Forms    
timeout 5 #5 secs delay
'Hello, this is the text typed out'.ToCharArray() | ForEach-Object {[System.Windows.Forms.SendKeys]::SendWait($_)}
