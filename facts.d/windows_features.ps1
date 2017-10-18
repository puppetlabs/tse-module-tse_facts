$var = (Get-WindowsFeature | Where-Object {$_.Installed -match "True"} | Select-Object -expand Name) -join ", "
write-host "windows_features=$($var)"