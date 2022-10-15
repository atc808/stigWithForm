<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Stig_apply_menu
#>
Import-Module vmware.vimautomation.core -ErrorAction SilentlyContinue
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form1                           = New-Object system.Windows.Forms.Form
$Form1.ClientSize                = '800,255'
$Form1.text                      = "Pierce STIG Applicator"
$Form1.TopMost                   = $false

$cb_1                            = New-Object system.Windows.Forms.CheckBox
$cb_1.text                       = "Force Firewall Add"
$cb_1.AutoSize                   = $false
$cb_1.width                      = 140
$cb_1.height                     = 20
$cb_1.location                   = New-Object System.Drawing.Point(333,226)
$cb_1.Font                       = 'Microsoft Sans Serif,10'
#$cb_1.visible                    = $false

$tx_vcip                         = New-Object system.Windows.Forms.TextBox
$tx_vcip.multiline               = $false
$tx_vcip.width                   = 277
$tx_vcip.height                  = 20
$tx_vcip.location                = New-Object System.Drawing.Point(30,27)
$tx_vcip.Font                    = 'Microsoft Sans Serif,10'
$tx_vcip.Text                    = "10.10.10.253"

$tx_location                     = New-Object system.Windows.Forms.TextBox
$tx_location.multiline           = $false
$tx_location.width               = 213
$tx_location.height              = 20
$tx_location.location            = New-Object System.Drawing.Point(30,77)
$tx_location.Font                = 'Microsoft Sans Serif,10'
 $tx_location.Text                = "test"

$tx_uid                          = New-Object system.Windows.Forms.TextBox
$tx_uid.multiline                = $false
$tx_uid.width                    = 202
$tx_uid.height                   = 20
$tx_uid.location                 = New-Object System.Drawing.Point(320,27)
$tx_uid.Font                     = 'Microsoft Sans Serif,10'
$tx_uid.Text                     = "administrator@sso.pierce.lab"

$tx_passd                        = New-Object system.Windows.Forms.TextBox
$tx_passd.multiline              = $false
$tx_passd.width                  = 136
$tx_passd.height                 = 20
$tx_passd.UseSystemPasswordChar  = $true
$tx_passd.location               = New-Object System.Drawing.Point(540,27)
$tx_passd.Font                   = 'Microsoft Sans Serif,10'
$tx_passd.Text                   =  'Citl0ml!'

$tx_path                         = New-Object system.Windows.Forms.TextBox
$tx_path.multiline               = $false
$tx_path.text                    = "c:\temp\"
$tx_path.width                   = 315
$tx_path.height                  = 20
$tx_path.location                = New-Object System.Drawing.Point(30,126)
$tx_path.Font                    = 'Microsoft Sans Serif,10'

$lbl_Path                        = New-Object system.Windows.Forms.Label
$lbl_Path.text                   = "Path to Config files / logs"
$lbl_Path.AutoSize               = $true
$lbl_Path.width                  = 25
$lbl_Path.height                 = 10
$lbl_Path.location               = New-Object System.Drawing.Point(30,110)
$lbl_Path.Font                   = 'Microsoft Sans Serif,10'

$lbl_location                    = New-Object system.Windows.Forms.Label
$lbl_location.text               = "Location / vCenter Container"
$lbl_location.AutoSize           = $true
$lbl_location.width              = 25
$lbl_location.height             = 10
$lbl_location.location           = New-Object System.Drawing.Point(30,59)
$lbl_location.Font               = 'Microsoft Sans Serif,10'

$lbl_vCenterIp                   = New-Object system.Windows.Forms.Label
$lbl_vCenterIp.text              = "vCenter IP / Hostname"
$lbl_vCenterIp.AutoSize          = $true
$lbl_vCenterIp.width             = 25
$lbl_vCenterIp.height            = 10
$lbl_vCenterIp.location          = New-Object System.Drawing.Point(30,10)
$lbl_vCenterIp.Font              = 'Microsoft Sans Serif,10'

$lbl_uid                         = New-Object system.Windows.Forms.Label
$lbl_uid.text                    = "Login ID"
$lbl_uid.AutoSize                = $true
$lbl_uid.width                   = 25
$lbl_uid.height                  = 10
$lbl_uid.location                = New-Object System.Drawing.Point(321,11)
$lbl_uid.Font                    = 'Microsoft Sans Serif,10'

$lbl_passWord                    = New-Object system.Windows.Forms.Label
$lbl_passWord.text               = "Password"
$lbl_passWord.AutoSize           = $true
$lbl_passWord.width              = 25
$lbl_passWord.height             = 10
$lbl_passWord.location           = New-Object System.Drawing.Point(545,13)
$lbl_passWord.Font               = 'Microsoft Sans Serif,10'

$btn_Misc                        = New-Object system.Windows.Forms.Button
$btn_Misc.text                   = "Misc"
$btn_Misc.width                  = 60
$btn_Misc.height                 = 30
$btn_Misc.location               = New-Object System.Drawing.Point(462,183)
$btn_Misc.Font                   = 'Microsoft Sans Serif,10'

$btn_Firewall                    = New-Object system.Windows.Forms.Button
$btn_Firewall.text               = "Firewall"
$btn_Firewall.width              = 60
$btn_Firewall.height             = 30
$btn_Firewall.location           = New-Object System.Drawing.Point(386,183)
$btn_Firewall.Font               = 'Microsoft Sans Serif,10'

$btn_host                        = New-Object system.Windows.Forms.Button
$btn_host.text                   = "Host"
$btn_host.width                  = 60
$btn_host.height                 = 30
$btn_host.location               = New-Object System.Drawing.Point(310,183)
$btn_host.Font                   = 'Microsoft Sans Serif,10'

$btn_vm                          = New-Object system.Windows.Forms.Button
$btn_vm.text                     = "VM"
$btn_vm.width                    = 60
$btn_vm.height                   = 30
$btn_vm.location                 = New-Object System.Drawing.Point(236,183)
$btn_vm.Font                     = 'Microsoft Sans Serif,10'

$tx_fwip                         = New-Object system.Windows.Forms.TextBox
$tx_fwip.multiline               = $false
$tx_fwip.width                   = 263
$tx_fwip.height                  = 20
$tx_fwip.visible                 = $true
$tx_fwip.location                = New-Object System.Drawing.Point(404,126)
$tx_fwip.Font                    = 'Microsoft Sans Serif,10'
# $tx_fwip.text                    = "10.10.0.0/16"

$lbl_fw_net                      = New-Object system.Windows.Forms.Label
$lbl_fw_net.text                 = "Enter Allowed firewall network in CIDR format (10.10.10.0/24)"
$lbl_fw_net.AutoSize             = $true
$lbl_fw_net.visible              = $true
$lbl_fw_net.width                = 25
$lbl_fw_net.height               = 10
$lbl_fw_net.location             = New-Object System.Drawing.Point(375,109)
$lbl_fw_net.Font                 = 'Microsoft Sans Serif,10'

$Form1.controls.AddRange(@($cb_1,$tx_vcip,$tx_location,$tx_uid,$tx_passd,$tx_path,$lbl_Path,$lbl_location,$lbl_vCenterIp,$lbl_uid,$lbl_passWord,$btn_Misc,$btn_Firewall,$btn_host,$btn_vm,$tx_fwip,$lbl_fw_net))

 $btn_vm.Add_Click({
   $btn_vm.text="BLAH"
   #Authenticate_vCenter ($tx_vcip,$tx_uid,$tx_passd)
   # $ret=stig_vm ($vm,$true)

   })
$btn_host.Add_Click({

  #$fserver=$tx_vcip.text
  #$fUID=$tx_uid.text
  #$fPass=$tx_passd.text
  $btn_host.text = "XXX"
  #Connect-VIServer -server $fserver -User $fUID  -Password $fPass 
  #$hlist = get-vmhost -location $tx_location.text
  
  #foreach ($hname in $hlist){
  
    #stigHost $hname
    

 # }
  $btn_host.text = "DONE"
  })


# $btn_Firewall.Add_Click({ 
#       $fserver=$tx_vcip.text
#       $fUID=$tx_uid.text
#       $fPass=$tx_passd.text
#       $fSubnet=$tx_fwip.text
#       Connect-VIServer -server $fserver -User $fUID  -Password $fPass 
#       $btn_firewall.text = "XXX"
#         sfirewall  $fsubnet
#         $btn_firewall.text = "DONE"
#  <#  $fServer=$tx_vcip.text
  


#     Connect-VIServer -server $fserver -User $fUID  -Password $fPass
#     $srvs=get-vmhost
#     foreach ($fsv in $srvs)
#         {
#               sfirewall $fsv.name $fUID $fPass $fSubnet  $true
#               #$pSVR ,$pUID ,  $pPW, $addIP, [boolean]$force)
#         } #>
#   })


    # $btn_Misc.Add_Click({  })


#----------------------------------------------------------------------------------------------------------


$global:pw=$null

#$passd=read-host 'Enter ESXi/vCenter PW :  ' -assecurestring
#$Bpw=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($passd)
#$global:pw=[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($bpw)

$PSDefaultParameterValues = @{
  "stighost:filePath"="c:\temp\"
  "stighost:HostStigFile"="Hoststig.txt"
  "stighost:logfilename"="Apply_Stigs_HOST.log" 
  
  "stigvm:filePath"="c:\temp\"
  "stigvm:vmStigFile"="vmstig.txt"
  "stigvm:logfileName"="Apply_Stigs_VM.log"  
}


#$passd=read-host 'Enter Host/ESXi PW: ' -assecurestring
#$Bpw=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($passd)
#pw=[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($bpw)



    # Function Authenticate_vCenter($vCenterAddr, $userName)
    # {
    # [cmdletbinding()]
    # $passd=read-host 'Enter Host/ESXi PW: ' -assecurestring
    # $Bpw=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($passd)
    # $pw=[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($bpw)
    
    # $ret=Connect-viserver -server $vCenterAddr -user $userName -password $global:pw
    # return $ret
    # }


    # Function Authenticate_ESXiHost($hostAddr, $ESXiuserName)
    # {

    # if ($usePW -ne $True)
    #    {
    # write-host $passd           
    # $passd = 
    # $passd=read-host 'Enter ESXi PW for $hostAddr:  ' -assecurestring
    # $Bpw=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($passd)
    # $pw=[System.Runtime.InteropServices.Marshal]::PtrToStringAuto($bpw)
  
    #    }


        
    #     write-host "************************************************************* $global:pw"
    #     $ret=Connect-viserver -server $hostAddr -user $ESXiuserName -password $tx_passd.text
    #     return $ret
    #  }
     

# function StigHost($hst,[boolean]$dryrun)
# {

# [cmdletbinding()]


# <# "stighost:filePath"="c:\temp\"
#   "stighost:HostStigFile"="Hoststig.txt"
#   "stighost:logfilename"="Apply_Stigs_HOST.log"  #>
#    #$PSDefaultParameterValues["CmdletName:ParameterName"] 
  
#    $ht=$hst
#    #$ret=authenticate_esxihost $ht.name "root" $true
#    authenticate_esxihost $ht.name "root" $true

#    $filpath = $tx_path.text              #$PSDefaultParameterValues["StigHost:filepath"]
#    $HostStigFil = "Hoststig.txt"         #$PSDefaultParameterValues["StigHost:HostStigFile"]
#    $lfileName =   "ApplyHostStigs.log"      #$PSDefaultParameterValues["StigHost:logfileName"]


#     $logfile=$filpath + $lfilename
#     $HstFIlePath=$filpath + $HostStigFil
#     $stig_hst = import-csv $HstFIlePath # -header STIG,Name,Value
    
#     $ht=$hst
#     write-host  "_____________________________________________________________________________  "
#     out_log $logfile "_______________________________________________________________"
#     write-host "  " 
#     write-host $ht.name

#                foreach ($line in $stig_hst)
#                 {
#                   write-host $ht.name 
#                 $v = Get-AdvancedSetting -entity $ht.name -name $line.name -ErrorAction SilentlyContinue
                
#                   if ( -not( $v.value)  -AND $line.value -eq "!")
#                    {
#                    write-host  $line.stig " :  " $ht.name "===" $line.name " -  No Change Needed"
#                    #$line.STIG + ": ***Should Not exist*** : " + $line.name +": " + "Current Value: " + $v.Value | out-file $file -encoding Unicode -append
#                    out_log $logfile $line.STIG + ": ***Should Not exist*** : " + $line.name +": " + "Current Value: " + $v.Value
#                    }

#                  Else {         
#                             if ($line.value -eq "@" -or $line.value -eq "#"){
#                                     write-host  $line.stig " :  " $ht.name " === " $line.name " - Manual Check or N/A"
#                                     out_log $logfile $line.STIG + ": "+ $line.name +": Manual Check or N/A Current Value " + $v.Value

#                                                               }
#                             Else {
#                                 if ($v.value -ne $line.Value)   {     
#                                        write-host  $line.stig " :  " $ht.name "===" $line.name " -  Not Valid - setting to proper value"

#                                        out_log $logfile  $line.STIG + ":  " + $line.name + " on " + $ht.name + " chnged from: " + $v.value + " to " + $line.value
                                                                               
#                                        if ($line.target -eq "h")
#                                        {
#                                           hstsetting $ht.name $v $line.value
#                                           write-host $ht.name "  " $v "  " $line.value
#                                        }
#                                        Else{
#                                         cadv $v $line.value
#                                         }

#                                          }
# 
# 
# 
#                                  Else {
#                                       #write-host $line.STIG " " $ht.name ": is set to "  $v.Value   "  and should be"  $line.value    "No changes needed for " $line.name
#                                       write-host  $line.stig " :  " $ht.name "===" $line.name " -  No Change Needed"                                       # $line.STIG + ": OK " + $line.name +":   " + $v.value| out-file $file -encoding Unicode -append
#                                        }
#                                        }

#                     }

#                }
#     out_log $logfile "_____________________________________________________"

 

#                      Write-host "Finished"
#                      out_log $logfile "Completed STIG application for " + $ht.name
#                      out_log $logfile " "
#                      #Disconnect-VIServer -server $ht.name  -erroraction SilentlyContinue

# }

#  function HstSetting ($hname, $param1, $param2)
#  {
#  write-host "hstSetting Function"

#             connect-viserver $hname -User 'root' -password $pw
#             Get-AdvancedSetting -entity $hname -name $param1.name |Set-AdvancedSetting -Value $param2 
#             disconnect-viserver $hname -Confirm:$false

#  }

#  Function cADV ($p1, $p2)
#  {

#  $retv=$p1 | set-advancedsetting -value ($p2) -confirm:$false | select-object entity,name,value
#  Get-AdvancedSetting -name $p1| set-advancedsetting -value ($p2) -confirm:$false  -whatif | select-object entity,name,value
#  return $retv

#  write-host "cADV function"
#   }

# function sfirewall ($addIP)
# {
# [cmdletbinding()]
# $logfile =$tx_path.text + "firewall.log"
#         #Disconnect-VIServer $pSVR -Force -Confirm:$false -whatif
#         #$addIP=read-host "Input IP to add to firwall rule: "
#         #Disconnect-viserver * -force -confirm:$True  -erroraction SilentlyContinue
# $hosts=get-vmhost #-server $tx_vcip.text #-Location $tx_location.text
# foreach($hname in $hosts.name){
#   #Connect-VIServer -server $hname -user "root" -password $tx_passd.text
#   #$btn_Firewall.text="Working"
#   $cli=get-esxcli -vmhost $hname
#   $ips=$cli.network.firewall.ruleset.allowedip.list()


#   foreach ($rs in $ips){
#           If (($rs.ruleset -ne "vSphereClient") -and ($rs.AllowedIPAddresses -eq "ALL") -or ($cb_1.checked -eq $true))
#           #if (($rs.ruleset -ne "vSphereClient") -and ($rs.AllowedIPAddresses -eq "All"))
#           #if (($rs.ruleset -eq "vMotion") -and ($rs.AllowedIPAddresses -eq "All"))
#           {

#             if ($cb_1.checked -ne $true)
#               {
#                 $cli.network.firewall.ruleset.set($false,$true,$rs.Ruleset)
#               } 
            
#             $cli.network.firewall.ruleset.allowedip.add("$addIP",$rs.Ruleset)
#             $oline= "ESXi Host: "+ $pSVR + " " + $rs.ruleset + " Current Setting: " +  $rs.AllowedIPAddresses + " Adding entry: " + $addIP
#               write-host $oline
#             out_log $logfile $oline

#           }
#           Else{
#               $oline = "ESXi Host: " + $psvr + ":  ********SKIPPING:  " + $rs.Ruleset + " " + $rs.allowedipaddresses
#               write-host $oline
#               out_log $logfile $oline
#               #out_log $logfile "*****************************Skipping: "+$rs.AllowedIPAddresses
#               }
#               }
#             }
#  # Disconnect-VIServer $pSVR -Force -Confirm:$false -ErrorAction SilentlyContinue
#   #form1.$btn_Firewall.text="COMPLETE"
  

# }

function out_log ($lfile, [string]$line)
{
  $line | out-file $lfile -encoding Unicode -Append
}


function stigvm ($vm,[boolean]$dryrun)
{
  [cmdletbinding()]
    #$lfile="VM_STIG_REPORT.LOG"

    $filpath = $PSDefaultParameterValues["stigvm:filepath"]
    $vmStigFil = $PSDefaultParameterValues["stigvm:vmStigFile"]
    $lfileName = $PSDefaultParameterValues["stigvm:logfileName"]

    $lfile = $filpath + $lfileName

    #"begin STIG application for " $vm.name | out-file $file -encoding Unicode -append

      $LLINE = "BEGIN STIG APPLICATION FOR: $vm.name "
      out_log $lfile $lline
      write-host $vm.name
    $stigPath=$filpath + $vmStigFil 
``
    foreach ($line in $stig_vm)
        {

           $v = Get-AdvancedSetting -entity $vm.name -name $line.name
           if ($v.value -ne $line.Value) {
            write-host $line.name  " needs updating on "  $vm.name " setting to"  $line.value
            #"      " + $line.name + " needs updating on " + $vm.name + " setting to " + $line.value | out-file $file -encoding Unicode -append


            if ($dryrun){
                    new-advancedsetting -entity $vm.name -name ($line.name) -value ($line.value) -Force -confirm:$false -whatif | Select-Object entity,name,value
                    $lline= "***DRY RUN -- NO CHANGES COMITTIED****" + $line.name + " needs updating on " + $vm.name + " setting to " + $line.value
                    out_log $lfile $lline
                    }
            Else
                    {
                    new-advancedsetting -entity $vm.name -name ($line.name) -value ($line.value) -Force -confirm:$false | Select-Object entity,name,value
                    $lline= "      " + $line.name + " needs updating on " + $vm.name + " setting to " + $line.value
                    out_log $lfile $lline

                    }
                       }
            Else {
                write-host "      No changes needed for " $line.name
               # "      No changes needed for " + $line.name | out-file $file -encoding Unicode -append
                $lline = "      No changes needed for " + $line.name
                out_log $lfile $lline
            }
            }

    out_log $lfile "Completed STIG application for  $vm.name ."
    out_log $lfile " "
    return "Stig Complete for $vm"
   } 
  
#Write your logic code here

[void]$Form1.ShowDialog()