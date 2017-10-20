$domain = (Get-WmiObject Win32_ComputerSystem).Domain
write-host "domain=$($domain)"
