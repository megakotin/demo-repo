$rg = "AZ-WVD-LAN"
$hostPool = "SE-AVD"

$sessionHosts = Get-AzWvdSessionHost `
    -ResourceGroupName $rg `
    -HostPoolName $hostPool

$result = foreach ($sh in $sessionHosts) {

    $vmName = ($sh.Name -split "/")[-1].Split(".")[0]

    $vm = Get-AzVM -ResourceGroupName $rg -Name $vmName -ErrorAction SilentlyContinue

    [PSCustomObject]@{
        HostName    = $vmName
        Status      = $sh.Status
        Sessions    = $sh.Sessions
        Description = if ($vm -and $vm.Tags) { $vm.Tags["Description"] } else { "" }
    }
}

$result | Export-Csv -Path "C:\Temp\HostPool_Description.csv" -NoTypeInformation
