## Browsers
#--- Browsers ---
choco install -y googlechrome
choco install -y firefox

## Dev Tools
choco install -y vscode
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"
choco install -y 7zip.install
choco install -y sysinternals
choco install -y notepadplusplus
choco install -y postman

choco install -y visualstudio2017professional
choco install -y resharper dotcover dotpeek
choco install -y sql-server-management-studio

choco install -y slack

# Get Visual Studio C++ Redistributables
## Needed for SASS
choco install -y vcredist2015


## Docker + HyperV
## Maybe add Sql Server Docker container install??
## Will need to enable Virtualization in Bios
choco install -y Microsoft-Hyper-V-All --source="'windowsFeatures'"
Enable-WindowsOptionalFeature -Online -FeatureName containers -All
RefreshEnv
choco install -y docker-for-windows
choco install -y vscode-docker

## Azure Dev Ops Modules
choco install -y powershell-core
choco install -y azure-cli
Install-Module -Force Az
choco install -y microsoftazurestorageexplorer

## Terraform - Nice to have in future.
## choco install -y terraform

## Git IDE = Choose your favorite?
choco install -y sourcetree
# choco install -y gitextensions --pre
# choco install -y tortoisegit

## SVN Tools
choco install -y tortoisesvn