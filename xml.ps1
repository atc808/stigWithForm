[xml]$xmlDoc=Get-Content -path C:\temp\stig_script\stigs\fil.xml
#$v=select-xml -xml $xmlDoc -XPath "//STIG_DATA:VULN_ATTRIBUTE"
$a=$xmlDoc.CHECKLIST.STIGS.iSTIG.STIG_INFO.VULN.STIG_DATA.VULN_ATTRIBUTE
foreach($b in $a){
    write-host $b

}

