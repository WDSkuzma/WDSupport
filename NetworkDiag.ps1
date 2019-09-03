New-Item -Path "c:\" -Name "WDLogfiles" -ItemType Directory
(Invoke-WebRequest -uri "http://ifconfig.me/ip").Content|Out-File -FilePath c:\WDLogfiles\1-ExternalIP.txt
Resolve-DnsName login.wirecard.com|Out-File -FilePath c:\WDLogfiles\loginwebsite.txt
Resolve-DnsName clientzone.wirecard.com|Out-File -FilePath c:\WDLogfiles\clientzone.txt
Resolve-DnsName webservice.wirecard.com|Out-File -FilePath c:\WDLogfiles\webservice.txt
Resolve-DnsName enroll.wirecard.com|Out-File -FilePath c:\WDLogfiles\enroll.txt
Test-NetConnection -computer login.wirecard.com|Out-File -FilePath c:\WDLogfiles\loginsite.txt
Test-NetConnection -computer login.wirecard.com -port 443|Out-File -FilePath c:\WDLogfiles\login443.txt
Test-NetConnection -computer webservice.wirecard.com -port 4005|Out-File -FilePath c:\WDLogfiles\webservice_4005.txt
Test-NetConnection -computer webservice.wirecard.com -port 4006|Out-File -FilePath c:\WDLogfiles\webservice_4006.txt
Get-NetAdapter|Out-File -FilePath c:\WDLogfiles\networkadapter.txt
Get-NetIPAddress|Out-File -FilePath c:\WDLogfiles\IPAddress.txt
Get-DNSClientServerAddress|Out-File -FilePath c:\WDLogfiles\DNSServers.txt
Get-DNSClientCache|Out-File -FilePath c:\WDLogfiles\DNSCache.txt

$path = "C:\WDLogfiles" 
$outfile = "C:\WDLogfiles\AllOutput.txt"
Get-ChildItem -Path $path -Filter "*.txt" | Get-Content | Add-Content -Path $outfile﻿