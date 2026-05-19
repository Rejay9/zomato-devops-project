#!/bin/bash

echo "================================"
echo " Terraform Installation Script"
echo " By: Rejay"
echo " Date: $(date)"
echo "================================"

echo ""
echo "Step 1: Updating system..."
sudo apt update -y

echo ""
echo "Step 2: Installing dependencies..."
sudo apt install gnupg software-properties-common wget -y

echo ""
echo "Step 3: Adding HashiCorp GPG key..."
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo ""
echo "Step 4: Adding HashiCorp repository..."
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

echo ""
echo "Step 5: Installing Terraform..."
sudo apt update && sudo apt install terraform -y

echo ""
echo "================================"
echo " Verifying installation..."
echo "================================"
terraform --version

echo ""
echo "================================"
echo " Terraform installed successfully!"
echo "================================"
