Connect-VIServer -server 10.10.10.110 -user 'administrator@sso.pierce.lab' -password '1q2w3e4r5t!Q@W#E$R%T'
$cli=get-esxcli -vmhost 10.10.10.105 
$Ip1="10.10.10.0/24"
#$rname=$cli.network.firewall.ruleset.rule.list()
$ips=$cli.network.firewall.ruleset.allowedip.list()
#$rnames=$rname.ruleset
foreach ($rs in $ips){
    
    if (($rs.ruleset -ne "vSphereClient") -and ($rs.AllowedIPAddresses -eq "All"))
        {
           
           $cli.network.firewall.ruleset.set($false,$true,$rs.Ruleset)
           $cli.network.firewall.ruleset.allowedip.add("$ip1",$rs.Ruleset)
           write-host $rs.ruleset "  " $rs.AllowedIPAddresses
           

        }
        Else{write-host "********SKIPPING" $rs.Ruleset}
    }

    