#!/bin/bash

# Install Apache
if command -v yum &> /dev/null; then
    yum update -y
    yum install -y httpd
    systemctl enable httpd
    systemctl start httpd
elif command -v apt-get &> /dev/null; then
    apt-get update -y
    apt-get install -y apache2
    systemctl enable apache2
    systemctl start apache2
fi

# Create HTML page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Cloud-Init Demo</title>
</head>
<body>
    <h1>Hello from Bash User Data!</h1>
    <p>This page was created automatically.</p>
</body>
</html>
EOF