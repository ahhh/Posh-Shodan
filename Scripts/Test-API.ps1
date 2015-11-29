#
# Sample scripts for 'Posh-Shodan'
#
# Generated by: Dan Borges <ahhh.db@gmail.com>
#
# Generated on: 11/28/2015
#
# Description: A simple script for making sure the module is correctly imported and working
#
# Test if Posh-Shodan is installed
if (Get-Module -Name Posh-Shodan) {
    Write-Host 'Posh-Shodan has already been imported'
} else {
    Write-Host 'Please Import Posh-Shodan: iex (New-Object Net.WebClient).DownloadString("https://gist.githubusercontent.com/darkoperator/9378450/raw/7244d3db5c0234549a018faa41fc0a2af4f9592d/PoshShodanInstall.ps1")'
}

# Attempt to use query the user's subscription information
Try
{
$ShodanAPIInfo = Get-ShodanAPIInfo
Write-Host 'Your Shodan Subscription Information:'
$ShodanAPIInfo | Format-List
}
Catch
{
Write-Host 'Make sure your Shodan API Key is set!'
Write-Host 'PS C:\> Set-ShodanAPIKey -APIKey XXXXXXXXXXXXXXXXXXXXXXXX -MasterPassword (Read-Host -AsSecureString)'
}

