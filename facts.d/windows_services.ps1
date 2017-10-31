$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status)
write-host "windows_services=" 
ConvertTo-Json $var
