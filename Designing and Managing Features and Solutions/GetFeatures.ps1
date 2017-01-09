$web = Get-SPWeb http://nwkspsdev1:7455/sites/ecmcc

#Get features and send to out file
#Get-SPFeature | Sort -Property DisplayName > c:\Features.txt

#Enable Features(CTYPE)
Disable-SPFeature "695b6570-a48b-4a8e-8ea5-26ea7fc1d162" -Url $web.Url