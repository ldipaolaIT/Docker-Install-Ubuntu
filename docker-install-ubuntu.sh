# Docker Install - Ubuntu

# Update apt package index
apt-get update

# Upgrade OS
apt-get upgrade

# Install common packages
apt-get install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker Official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker Repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# Update apt package index
apt-get update

# Install Docker Community Edition
apt-get install docker-ce

# Test Docker Installation
docker version
docker run hello-world

# Optional - Best Practice
usermod -a -G docker user
grep docker /etc/group
