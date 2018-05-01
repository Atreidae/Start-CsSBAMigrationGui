
<#  
.SYNOPSIS  
	Todo, build synopsis


.DESCRIPTION  
	Created by James Arber. www.skype4badmin.com
	Built with PoshTools Pro www.poshtools.com
    
	
.NOTES  
    Version      	   	: 0.1 (Devel)
	Date			    : 16/04/2018
	Lync Version		: Tested against Skype4B 2015
    Author    			: James Arber
	Header stolen from  : Greig Sheridan who stole it from Pat Richard's amazing "Get-CsConnections.ps1"
							
	:v0.1:	Internal Build
	
.LINK  
    https://www.skype4badmin.com

.KNOWN ISSUES
   None at this stage, this is however in development code and bugs are expected

.EXAMPLE Starts the RGSLocBot Configuration Gui
    PS C:\> .\Start-CsSBAMigrationGUI.ps1

.PARAMETER ConfigFilePath
	Specify the location of the CsSBAMigrationGUI.json file, Defaults to the current directory

.INPUT
Start-CsSBAMigrationGUI Does not accept input from the pipeline.

.Output
Start-CsSBAMigrationGUI Does not output to the pipeline

#>

[CmdletBinding(DefaultParametersetName="Common")]
param(
	[Parameter(Mandatory=$false)] [switch]$DisableScriptUpdate,
	[Parameter(Mandatory=$false, Position=1)] $ConfigFilePath = $null
	)
#############################
# Script Specific Variables #
#############################
	#Set for internal builds
	Write-Host "Info: Importing Base Variables" -ForegroundColor Green
	$VerbosePreference = "Continue" #Todo Preview Build Only
	
	[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
	[single]$ScriptVersion = "0.1"
	[string]$GithubRepo = "Start-CsSBAMigrationGUI"
	[string]$GithubBranch = "devel"
	[string]$BlogPost = "http://www.skype4badmin.com/australian-holiday-rulesets-for-response-group-service/" #todo


	$ScriptVersion = 0.1
	$StartTime = Get-Date
	Write-Host "Info: Start-CsSBAMigrationGui Version $ScriptVersion started at $StartTime" -ForegroundColor Green
	$LogFileLocation = $PSCommandPath -replace ".ps1",".log" #Where do we store the log files? (In the same folder by default)
	$DefaultLogComponent = "Unknown" 
	
	
       

#endregion variables


#region Functions
  ##################
  # Function Block #
  ##################
Function Write-Log {
    PARAM(
         [String]$Message,
         [String]$Path = $LogFileLocation,
         [int]$severity = 1,
         [string]$component = "Default"
         )

         $TimeZoneBias = Get-WmiObject -Query "Select Bias from Win32_TimeZone"
         $Date= Get-Date -Format "HH:mm:ss"
         $Date2= Get-Date -Format "MM-dd-yyyy"

         $MaxLogFileSizeMB = 10
         If(Test-Path $Path)
         {
            if(((gci $Path).length/1MB) -gt $MaxLogFileSizeMB) # Check the size of the log file and archive if over the limit.
            {
                $ArchLogfile = $Path.replace(".log", "_$(Get-Date -Format dd-MM-yyy_hh-mm-ss).lo_")
                ren $Path $ArchLogfile
            }
         }
         
		 "$env:ComputerName date=$([char]34)$date2$([char]34) time=$([char]34)$date$([char]34) component=$([char]34)$component$([char]34) type=$([char]34)$severity$([char]34) Message=$([char]34)$Message$([char]34)"| Out-File -FilePath $Path -Append -NoClobber -Encoding default
		 #If the log entry is verbose (1), output it to write verbose
		 if ($severity -eq 1) {"$date $Message"| Write-verbose}
         #If the log entry is just informational (eq 2), output it to write host
		 if ($severity -eq 2) {"Info: $date $Message"| Write-Host -ForegroundColor Green}
		 #If the log entry has a severity of 3 assume its a warning and write it to write-warning
		 if ($severity -eq 3) {"$date $Message"| Write-Warning}
		 #If the log entry has a severity of 4 or higher, assume its an error and display an error message (Note, critical errors are caught by throw statements so may not appear here)
		 if ($severity -ge 4) {"$date $Message"| Write-Error}
} 

Function Get-IEProxy {
	Write-Host "Info: Checking for proxy settings" -ForegroundColor Green
        If ( (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings').ProxyEnable -ne 0) {
            $proxies = (Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings').proxyServer
            if ($proxies) {
                if ($proxies -ilike "*=*") {
                    return $proxies -replace "=", "://" -split (';') | Select-Object -First 1
                }
                Else {
                    return ('http://{0}' -f $proxies)
                }
            }
            Else {
                return $null
            }
        }
        Else {
            return $null
        }
    }

Function Get-CSInfrastructure(){
	#Pull the Voice Policy information from the Topology.
	Write-Log -component "Get-CSInfrastructure" -Message "Downloading User Policy Information" -severity 2

	$DialPlans = (Get-CsDialPlan | Select-Object Identity)
	Write-Log -component "Get-CSInfrastructure" -Message "Dialplans" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message $DialPlans -severity 1

	$VoicePolicies = (Get-CsVoicePolicy | Select-Object Identity)
	Write-Log -component "Get-CSInfrastructure" -Message "VoicePolicies" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message $VoicePolicies -severity 1
	
	
	
	#Add the policies / Dialplans to the datagrid
	Write-Log -component "Get-CSInfrastructure" -Message "Updating data grids" -severity 1
	Foreach ($Dialplan in $DialPlans) {
		$src_Dialplan.Items.Add($dialplan.identity.replace("Tag:",""))
		$dst_Dialplan.Items.Add($dialplan.identity.replace("Tag:",""))
		}

	Foreach ($VoicePolicy in $VoicePolicies) {
		$src_VoicePolicy.Items.Add($VoicePolicy)
		$dst_VoicePolicy.Items.Add($VoicePolicy)
		}

	#Make the datagrids look pre
	$grid_DialPlan.AutoResizeColumns()


	#Get all the registrars
	Write-Log -component "Get-CSInfrastructure" -Message "Downloading User Registrar Information" -severity 2
	$registrars = get-csservice -registrar
	Write-Log -component "Get-CSInfrastructure" -Message "Registrar Roles" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message $registrars -severity 1
	#Find the SBA's

	$SBAs = ($registrars | where {$_.Identity.split(":")[1] -ne $_.Webserver.split(":")[1]} | select Identity)
	Write-Log -component "Get-CSInfrastructure" -Message "SBAs" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message $SBAs -severity 1
	Foreach ($sba in $sbas) {$cbx_SrcSbaPool.items.add($sba.identity.split(":")[1])}
	Foreach ($sba in $sbas) {$cbx_DstSbaPool.items.add($sba.identity.split(":")[1])}


	#Find the frontends
	$Frontends = ($registrars | where {$_.Identity.split(":")[1] -eq $_.Webserver.split(":")[1]} | select Identity)
	Write-Log -component "Get-CSInfrastructure" -Message "FrontEnds" -severity 1
	Write-Log -component "Get-CSInfrastructure" -Message $Frontends -severity 1
	Foreach ($frontend in $Frontends) {$cbx_frontends.items.add($frontend.identity.split(":")[1])}


}

Function Get-ScriptUpdate {
	Write-Log -component "Self Update" -Message "Checking for Script Update" -severity 1
	Write-Log -component "Self Update" -Message "Checking for Proxy" -severity 1
	    $ProxyURL = Get-IEProxy
    If ( $ProxyURL) {
		Write-Log -component "Self Update" -Message "Using proxy address $ProxyURL" -severity 1
       }
    Else {
		Write-Log -component "Self Update" -Message "No proxy setting detected, using direct connection" -severity 1
		    }
	
	$GitHubScriptVersion = Invoke-WebRequest https://raw.githubusercontent.com/atreidae/RGSLocBot/devel/version -TimeoutSec 10 -Proxy $ProxyURL #todo change back to master!
        If ($GitHubScriptVersion.Content.length -eq 0) {
			Write-Log -component "Self Update" -Message "Error checking for new version. You can check manualy here" -severity 3
			Write-Log -component "Self Update" -Message "http://www.skype4badmin.com/find-and-test-user-ip-addresses-in-the-skype-location-database" -severity 1 #Todo Update URL
			Write-Log -component "Self Update" -Message "Pausing for 5 seconds" -severity 1
            start-sleep 5
            }
        else { 
                if ([single]$GitHubScriptVersion.Content -gt [single]$ScriptVersion) {
				Write-Log -component "Self Update" -Message "New Version Available" -severity 3
                   #New Version available

                    #Prompt user to download
				$title = "Update Available"
				$message = "an update to this script is available, did you want to download it?"

				$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", `
					"Launches a browser window with the update"

				$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", `
					"No thanks."

				$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)

				$result = $host.ui.PromptForChoice($title, $message, $options, 0) 

				switch ($result)
					{
						0 {
							Write-Log -component "Self Update" -Message "User opted to download update" -severity 1
							start "http://www.skype4badmin.com/australian-holiday-rulesets-for-response-group-service/" #Todo Update URL
							Write-Log -component "Self Update" -Message "Exiting Script" -severity 3
							Exit
						}
						1 {Write-Log -component "Self Update" -Message "User opted to skip update" -severity 1
									
							}
							
					}
                 }   
                 Else{
                 Write-Log -component "Self Update" -Message "Script is upto date" -severity 1
                 }
        
	       }


}

Function Read-ConfigFile {
	Write-Log -component "Read-ConfigFile" -Message "Writing Config file" -severity 2
    If(!(Test-Path $Script:ConfigPath)) {
			Write-Log -component "Config" -Message "Could not locate config file!" -severity 5
			Throw "No Config File!"
			}
			Else {
			Write-Log -component "Config" -Message "Found Config file in the specified folder" -severity 1
				}

	Write-Log -component "Read-ConfigFile" -Message "Pulling JSON File" -severity 1
	[Void](Remove-Variable -Name Config -Scope Script )
    Try{
		$Script:Config=@{}
		$Script:Config.AESKey = New-Object Byte[] 32
		$Script:Config = (ConvertFrom-Json (Get-Content -raw $Script:ConfigPath))
		Write-Log -component "Read-ConfigFile" -Message "Config File Read OK" -severity 2
		Write-Log -component "Read-ConfigFile" -Message "Reading Key File" -severity 1
		$Script:Config.AESKey = New-Object Byte[] 32
		$AESKeyFilePath = $Script:ConfigPath -replace ".json",".key" #The Key should be in the same folder as the config 
		$Script:Config.AESKey = Get-Content $AESKeyFilePath  
		}
	Catch {
		Write-Log -component "Read-ConfigFile" -Message "Error reading Config or Key file, Loading Defaults" -severity 3
		Load-DefaultConfig
		}

	Write-Log -component "Read-ConfigFile" -Message "Decrpyting Bot Password" -severity 2
	#Grab the Variable from the Config file, stuff it into a SecureString, Then decrypt it with BSTR
	$SecurePassword = (ConvertTo-SecureString -string $Script:Config.BotPassword  -key $Script:Config.AESKey)
    $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($SecurePassword)
    $Txt_BotPassword.text = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

	
    Write-Log -component "Read-ConfigFile" -Message "Importing Objects" -severity 1
	#Grab items from the Config array and stuff them into the GUI
    #Config Page
	$Txt_BotSipAddr.Text = $Script:Config.BotAddress
	$tbx_Autodiscover.text = $Script:Config.AutoDiscover
	$txt_DomainFQDN.text = $Script:Config.DomainFQDN
	$mtxt_MinUpdate.text = $Script:Config.MinUpdate
	$mtxt_MaxChanges.text = $Script:Config.MaxChanges
    
    #Main Page
    $dbx__FEpool.text = $Script:Config.SelectedFePool #Frikken extra underscore!
    $dbx_LocRule.text = $Script:Config.SelectedRule


}

#region controls

$grid_DialPlan_CellContentClick = {

}


$dataGridView2_CellContentClick = {

}

$label3_Click = {

}
#endregion controls


. (Join-Path $PSScriptRoot 'Start-CsSBAMigrationGui.designer.ps1')

#Populate the form with data
	Get-CSInfrastructure


$MainForm.ShowDialog()