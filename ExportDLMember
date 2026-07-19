Install-Module ExchangeOnlineManagement
PS C:\Windows\system32> Get-DistributionGroupMember -Identity "Allstaffhk" |
>> Select Name, PrimarySmtpAddress |
>> Export-Csv -Path "C:\Temp\DL_Members.csv" -NoTypeInformation

git add .
git commit -m "Export DL list member to CSV. Fixes #3"
git push origin main
