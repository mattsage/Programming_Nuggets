$Assembly = Add-Type -AssemblyName System.Web

$AdminPW = [System.Web.Security.Membership]::GeneratePassword(15,2)
