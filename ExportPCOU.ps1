Import-module ActiveDirectory

Get-ADComputer -Filter * -SearchBase " OU=Users,OU=DymonAsiaHK,DC=dymonasia,DC=com" `
-Properties Description |
Select Name, DNSHostName, Description |
Export-Csv -Path "C:\Temp\SG_AVD_Computers.csv"
