Param(
    [string]$emailDomain

$uid = get-aduser  -filter * | select -expand samaccountname
foreach ($name in $uid) {
    write-host "$name@$emailDomain"
    Set-ADUser -Identity $name -EmailAddress "$name@$emailDomain"
}
