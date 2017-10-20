$domain = (Get-WmiObject Win32_ComputerSystem).Domain
$domain_member = (Get-WmiObject -Class Win32_ComputerSystem).PartOfDomain
write-host "domain_member=$($domain_member)"
write-host "domain=$($domain)"
