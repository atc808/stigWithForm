#set-powercliconfiguration -scope user -defaultVIservermode single
disconnect-viserver -server * -confirm:$false
connect-viserver -server "xxxxxxxxxxx"
$spw=read-host 'Enter Host PW: ' -AsSecureString
$Bpw=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($spw)
$pw=[System.Runtime.InteropServices.Marshal]::ptrtostringauto($Bpw)

$host_name=get-vmhost #location blahblah
write-host $host_name
$line=import-csv -path ".\esxi_stig_check4.txt" -delimiter "`t"

foreach ($check in $line)
{
        write-host $check.vuln
        $outpath =".\output.log"
        foreach ($hst in $host_name)
        {
                Connect-VIServer -server $hst.name -user "root" -password $pw
                "server:" +  $hst.$host_name + " " + $check.vuln + "  Expected Value: " + $check.target_value | out-file -literalpath $outpath -Append
                $cmd=$check.check_code -split "XXX"

                foreach ($item in $cmd)
                {
                        $item | out-file -LiteralPath $outpath -append -width 120
                        Invoke-Expression $item | Format-Table -autosize -wrap | out-file -literalpath $outpath -append -width 120
                }

            }
            write-output "________________________________________________"| out-file -LiteralPath $outpath -Append
            disconnect-viserver * -confirm:$false 
}
                
    
