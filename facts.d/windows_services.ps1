#$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status | ConvertTo-Json -Depth 1)
#write-host "Windows_Services="$var

$var = @{"Windows_Services"= (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status)} | ConvertTo-Json -Compress -Depth 1
write-host $var
