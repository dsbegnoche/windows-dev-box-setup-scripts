## CivicPlus Custom Scripts for Deveopers
## Copy of WebDev with NodeJS

# Description: Boxstarter Script
# Author: Microsoft
# Common settings for web development with NodeJS

Disable-UAC

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
	iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

#--- Setting up Windows ---
executeScript "SystemConfiguration.ps1";
executeScript "FileExplorerSettings.ps1";
executeScript "RemoveDefaultApps.ps1";
executeScript "CivicPlus.ps1"
executeScript "Kraken.ps1"

#--- Tools ---
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge

#--- Tools ---
choco install -y nodejs-lts # Node.js LTS, Recommended for most users
# choco install -y nodejs # Node.js Current, Latest features
choco install -y visualstudio2019buildtools
choco install -y visualstudio2019-workload-vctools
choco install -y python2 # Node.js requires Python 2 to build native modules

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
