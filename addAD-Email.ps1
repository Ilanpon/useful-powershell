$uid = get-aduser  -filter * | select -expand samaccountname
$emaildomain = "test.com"
foreach ($name in $uid) {
    write-host "$name@$emaildomain"
    Set-ADUser -Identity $name -EmailAddress "$name@$emaildomain"
}
