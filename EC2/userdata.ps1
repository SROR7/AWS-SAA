<powershell>

# Install IIS Web Server
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

# Create HTML page
@"
<!DOCTYPE html>
<html>
<head>
    <title>EC2 Windows</title>
</head>
<body>
    <h1>Hello from PowerShell User Data!</h1>
    <p>This page was created automatically.</p>
</body>
</html>
"@ | Out-File -FilePath "C:\inetpub\wwwroot\index.html" -Encoding utf8

# Restart IIS
Restart-Service W3SVC

</powershell>