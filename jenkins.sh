#!/bin/bash

# Update system packages
sudo yum update -y

# Install Java
sudo amazon-linux-extras install java-17-amazon-corretto -y

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Install Jenkins
sudo yum install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Display initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Remove unnecessary line
# chmod 777 jenkins.sh  # This is not recommended due to security concerns

# Remove unnecessary line
# ./jenkins.sh          # This is redundant since the script is already running
