# Install IIS
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# Open port 80 in Windows Firewall for HTTP traffic
New-NetFirewallRule -Name HTTP-80-Open -DisplayName "HTTP 80" -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 80
