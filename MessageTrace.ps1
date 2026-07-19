Connect-exchangeOnline
Get-MessageTraceV2 -RecipientAddress edward.ko@dymonasia.com `
-StartDate (Get-Date "05/28/2026")`
-EndDate (Get-Date) |
Select-Object ReceivedTime, SenderAddress, RecipientAddress, Subject, Status |
Export-Csv "C:\Temp\MessageTrace2.csv" -NoTypeInformation
