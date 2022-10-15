<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Stig_apply_menu
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form1                           = New-Object system.Windows.Forms.Form
$Form1.ClientSize                = '800,255'
$Form1.text                      = "Pierce STIG Applicator"
$Form1.TopMost                   = $false

$cb_1                            = New-Object system.Windows.Forms.CheckBox
$cb_1.text                       = "What If Enabled"
$cb_1.AutoSize                   = $false
$cb_1.width                      = 95
$cb_1.height                     = 20
$cb_1.location                   = New-Object System.Drawing.Point(333,226)
$cb_1.Font                       = 'Microsoft Sans Serif,10'

$tx_vcip                         = New-Object system.Windows.Forms.TextBox
$tx_vcip.multiline               = $false
$tx_vcip.width                   = 277
$tx_vcip.height                  = 20
$tx_vcip.location                = New-Object System.Drawing.Point(30,27)
$tx_vcip.Font                    = 'Microsoft Sans Serif,10'

$tx_location                     = New-Object system.Windows.Forms.TextBox
$tx_location.multiline           = $false
$tx_location.width               = 213
$tx_location.height              = 20
$tx_location.location            = New-Object System.Drawing.Point(30,77)
$tx_location.Font                = 'Microsoft Sans Serif,10'

$tx_uid                          = New-Object system.Windows.Forms.TextBox
$tx_uid.multiline                = $false
$tx_uid.width                    = 202
$tx_uid.height                   = 20
$tx_uid.location                 = New-Object System.Drawing.Point(320,27)
$tx_uid.Font                     = 'Microsoft Sans Serif,10'

$tx_passd                        = New-Object system.Windows.Forms.TextBox
$tx_passd.multiline              = $false
$tx_passd.width                  = 136
$tx_passd.height                 = 20
$tx_passd.location               = New-Object System.Drawing.Point(540,27)
$tx_passd.Font                   = 'Microsoft Sans Serif,10'

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
$lbl_Path.location               = New-Object System.Drawing.Point(30,114)
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
$lbl_vCenterIp.location          = New-Object System.Drawing.Point(30,13)
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
$btn_Misc.text                   = "misc"
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
$btn_host.text                   = "HOST"
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

$Form1.controls.AddRange(@($cb_1,$tx_vcip,$tx_location,$tx_uid,$tx_passd,$tx_path,$lbl_Path,$lbl_location,$lbl_vCenterIp,$lbl_uid,$lbl_passWord,$btn_Misc,$btn_Firewall,$btn_host,$btn_vm))

$btn_vm.Add_Click({  })
$btn_host.Add_Click({  })
$btn_Firewall.Add_Click({  })
$btn_Misc.Add_Click({  })



#Write your logic code here

[void]$Form1.ShowDialog()