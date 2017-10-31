$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status)
ConvertTo-Json $var
