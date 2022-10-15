@{
        Root = 'c:\Users\igumas\OneDrive\Devlopment\stig_script\stigs\Apply_Stigs.ps1'
        OutputPath = 'c:\Users\igumas\OneDrive\Devlopment\stig_script\stigs\out'
        Package = @{
            Enabled = $true
            Obfuscate = $false
            HideConsoleWindow = $false
            DotNetVersion = 'v4.6.2'
            FileVersion = '1.0.0'
            FileDescription = ''
            ProductName = ''
            ProductVersion = ''
            Copyright = ''
            RequireElevation = $false
            ApplicationIconPath = ''
            PackageType = 'Console'
        }
        Bundle = @{
            Enabled = $true
            Modules = $true
            # IgnoredModules = @()
        }
    }
    