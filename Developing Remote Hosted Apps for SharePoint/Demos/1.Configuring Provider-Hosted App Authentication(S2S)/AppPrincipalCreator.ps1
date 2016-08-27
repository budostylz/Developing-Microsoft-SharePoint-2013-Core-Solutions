#Add the SharePoint PowerShell snapin
Add-PSSnapin "Microsoft.SharePoint.PowerShell"

$appDisplayName = "Test Remote Add-In"
$clientID = "66142967-91BB-4C50-9B70-06375DS240BC"

$targetWeb = Get-SPSIte "http://sp2013srv/"
$authRealm = Get-SPAuthenticationRealm -ServiceContext $targetWeb

$AppIdentifier = $clientID + "@" + $authRealm

Write-Host "Creating the new app principal registration..."
###Create the new registration here
Register-SPAppPrincipal -NameIdentifier $AppIdentifier -Site $targetWeb.RootWeb -DisplayName $appDisplayName