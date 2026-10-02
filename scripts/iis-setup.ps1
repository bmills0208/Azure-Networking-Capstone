Install-WindowsFeature -Name Web-Server -IncludeManagementTools

$html = @"
<!DOCTYPE html>
<html>
<head><title>Azure Networking Capstone</title></head>
<body>
<h1>Azure Networking Capstone</h1>
<p>IIS backend is responding.</p>
</body>
</html>
"@

Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value $html
Get-Service W3SVC
