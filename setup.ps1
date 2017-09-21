# Most of the below is based on jessfraz, https://gist.github.com/jessfraz/7c319b046daa101a4aaef937a20ff41f

# Run the below to install Boxstarter
# . { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force

# To run boxstarted script run:
# Install-BoxstarterPackage -PackageName <URL-TO-RAW-GIST> -DisableReboots

# Temp
Disable-UAC

# Win disable
Disable-BingSearch
Disable-GameBarTips

# Install tools
choco install sysinternals -y

# Install apps
choco install googlechrome
choco install notepadplusplus.install
choco install python2
choco install visualstudiocode

# Better File Explorer
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

# Uninstall software
$packages = @(  "Microsoft.BingFinance", 
                "Microsoft.BingNews", 
                "Microsoft.BingSports", 
                "Microsoft.BingWeather",
                "Microsoft.ZuneVideo",
                "Microsoft.XboxApp",
                "Microsoft.ZuneVideo",
                "Microsoft.WindowsAlarms",
                "king.com.CandyCrush*",
                "*Facebook*",
                "*Minecraft*",
                "*Solitaire*",
                "*Twitter*")
$packages | ForEach-Object { Get-AppxPackage $_ | Remove-AppxPackage }

# Start Menu: Disable Bing Search Results
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name BingSearchEnabled -Type DWord -Value 0
# To Restore (Enabled):
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name BingSearchEnabled -Type DWord -Value 1


# Change Explorer home screen back to "This PC"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 1
# Change it back to "Quick Access" (Windows 10 default)
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 2

# Better File Explorer
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1		
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1		
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

# These make "Quick Access" behave much closer to the old "Favorites"
# Disable Quick Access: Recent Files
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 0
# Disable Quick Access: Frequent Folders
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 0
# To Restore:
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 1
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 1


# Restore Temp
Enable-UAC