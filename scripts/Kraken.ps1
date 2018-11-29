# Team Kraken Repos, Docker Images, etc..

choco install -y robo3t
choco install -y typescript
choco install -y mongodb


## Derek Preferences
choco install -y winmerge
choco install -y winscp
choco install -y ccleaner


## Checkout Git Repos
# First - Setup SSH so git clone works without errors
cd C:\SourceControl\Git\
mkdir TestScripts
cd .\TestScripts
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/Kraken/Kraken
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/Kraken/Kraken-docker
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/CivicNotify/CivicNotify
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/IdentityServer/IdentityServer
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/IdentityServer/IdentityServerUI
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/Borealis/Borealis
git clone civicplus@vs-ssh.visualstudio.com:v3/civicplus/Preamble/preamble

## Install HCMS Docker Dependencies
cd .\Kraken-docker\dependencies
docker-config -f .\docker-compose.yml up -d
