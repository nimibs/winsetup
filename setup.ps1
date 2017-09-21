# Most of the below is based on jessfraz, https://gist.github.com/jessfraz/7c319b046daa101a4aaef937a20ff41f

# Run the below to install Boxstarter
# . { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force

# To run boxstarted script run:
# Install-BoxstarterPackage -PackageName <URL-TO-RAW-GIST> -DisableReboots

# Temp
Disable-UAC

Disable-BingSearch
Disable-GameBarTips

# Install tools
choco update sysinternals -y

# Install apps
choco update googlechrome
choco install notepadplusplus.install
choco install python2
choco install visualstudiocode

# Better File Explorer
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2


# Restore Temp
Enable-UAC