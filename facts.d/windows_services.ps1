#$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status | ConvertTo-Json -Depth 1)
#write-host "Windows_Services="$var
$var = @{"Windows_Services"= (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status) | convertto-json -compress -Depth 1} | ConvertTo-Json -compress -Depth 1
write-host $var
