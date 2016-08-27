#Add the SharePoint PowerShell snapin
Add-PSSnapin "Microsoft.SharePoint.PowerShell"

#Store properties for the token issuer
$issuerID = "40E7EA50-ED55-4873-A4F9-2811D7D890FB"
$targetWebURL = "http://sp2013srv/"
$targetWeb = Get-SPSite $targetWebURL
$authRealm = Get-SPAuthenticationRealm -ServiceContext $targetWeb
$issuerName = $issuerID + "@" + $authRealm

#Get the certificate from the hard drive
$publicCertificate = Get-PfxCertificate "C:\Certificates\remoteapps.contoso.com.cer"

#Create the trusted token issuer
Write-Host "Creating new trusted token issuer..."
### Create the new trusted token issuer here
New-SPTrustedSecurityTokenIssuer -Name $issuerID -RegisteredIssuerName $issuerName -Certificate $publicCertificate -IsTrustBroker

#For the development environment, allow the security token service to use HTTP without SSL
Write-Host "Configuring the Security Token Service"
$serviceConfig = Get-SPSecurityTokenServiceConfig
$serviceConfig.AllowOAuthOverHttp = $true
$serviceConfig.Update()

