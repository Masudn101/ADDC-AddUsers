
$objOU=[ADSI] "LDAP://OU=newusers,DC=officenet,DC=com"
$dataSource-import-csv "users.csv"
foreach ($dataRecord in $datasource) {
Scn-$dataRecord. FirstName + " " + $dataRecord. LastName
$sAMAccountName=$dataRecord. FirstName + "." + $dataRecord. LastName 
$givenName=$dataRecord. FirstName
$sn=$dataRecord. LastName
$sAMAccountName=$sAMAccountName.ToLower() 
$displayName=$sn + "," + $givenName
$userPrincipalName=$sAMAccountName + "@abc.com" 
$objuser-$objOU.Create("user", "CN="+$cn)
$objuser. Put("sAMAccountName", $sAMAccountName) 
$objuser. Put("userPrincipalName", $userPrincipalName) 
$objuser. Put("displayName", $displayName)
$objuser.Put("givenName", $givenName)
$objuser. Put("sn", $sn) $objuser.SetInfo()
$objuser.SetPassword("Asdf1234")
$objuser.psbase. InvokeSet("Account Disabled", $false)
$objuser.SetInfo()
}

