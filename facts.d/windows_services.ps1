#$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status | ConvertTo-Json -Depth 1)
#write-host "Windows_Services="$var

$var = (Get-Service | Where-Object {$_.status -eq "running"} | Select-Object Name, Status) | ConvertTo-Json -Depth 1
write-host "{"windows_services":$($var)}"

mkdir -P c:\testing
