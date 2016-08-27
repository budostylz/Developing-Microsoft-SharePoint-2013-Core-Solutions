#Store the paths to the makecert.exe and certmgr.exe programs
$makecert = "C:\Program Files\Microsoft Office Servers\15.0\Tools\makecert.exe"
$certmgr = "C:\Program Files\Microsoft Office Servers\15.0\Tools\certmgr.exe"

#Store the domain for the remote web server
$remoteDomain = "remoteapps.contoso.com"

#Create a folder in which to store the certificate
$certFolder = "C:\Certificates\"
###Create a new folder here
New-Item $certFolder -ItemType Directory -Force -Confirm:$false | Out-Null


#Store a file name for the certificate
$publicCertPath = $certFolder + $remoteDomain + ".cer"

#Store a file name for the private key
$privateKeyPath = $certFolder + $remoteDomain + ".pfx"

#Call makecert.exe to create the certificate
Write-Host "Creating the new certificate..."
###Create the new certificate here
& $makecert -r -pe -n "CN=$remoteDomain" -b 01/01/2013 -e 01/01/2013 -e 01/01/2023 -eku 1.3.6.1.5.5.7.3.1 -ss my -sr localMachine -sky exchange -sy 12 -sp "Microsoft RSA SChannel Cryptographic Provider" $publicCertPath

#Register the certificate in IIS
Write-Host "Registering the new certificate..."
### Register the certificate here
& $certmgr /add $publicCertPath /s /r localMachine root


#Store the certificate thumbprint
$publicCert = Get-PfxCertificate -FilePath $publicCertPath
$thumbprint = $publicCert.Thumbprint

#Store the certificate type
$type = [System.Security.Cryptography.X509Certificates.X509ContentType]::pfx

#Loop through the local certificates and get the one with the right thumbprint
Get-ChildItem cert:\\localmachine\my |
    Where-Object {$_.Thumbprint -eq $thumbprint} | 
        ForEach-Object {
            #Export the public key
            Write-Host "Exporting the private key..."

        ### Export the private key to a variable here
            $privateCertBytes = $_.Export($type, "Password")

            #Write the bytes to the private key path
            [System.IO.File]::WriteAllBytes($privateKeyPath, $privateCertBytes)
                    
            Write-Host "Private key exported"     
        
        }

