#!/bin/bash

# Remove warp command line
echo "Removing Warp command line..."
rm -rf ~/.warp
echo "Warp removed!"

# Remove Zed code platform
echo "Removing Zed code platform..."
sudo rm /usr/local/bin/zed
echo "Zed removed!"

# Remove npm and Node.js
echo "Removing npm and Node.js..."
sudo apt purge -y npm nodejs
sudo rm -rf ~/.npm
echo "npm and Node.js removed!"

# Remove JVM (Java Virtual Machine)
echo "Removing JVM..."
sudo apt purge -y default-jdk
echo "JVM removed!"

# Remove Python
echo "Removing Python..."
sudo apt purge -y python3 python3-pip
echo "Python removed!"

# Remove Oh My Zsh
echo "Removing Oh My Zsh..."
rm -rf ~/.oh-my-zsh
sudo apt purge -y zsh
chsh -s /bin/bash
echo "Oh My Zsh and zsh removed!"

# Remove pnpm
echo "Removing pnpm..."
rm -rf ~/.pnpm-store ~/.local/share/pnpm
echo "pnpm removed!"

# Remove nvm (Node Version Manager)
echo "Removing nvm..."
rm -rf ~/.nvm
sed -i '/nvm/d' ~/.bashrc ~/.zshrc ~/.profile ~/.bash_profile
echo "nvm removed!"

# Remove Visual Studio Code
echo "Removing Visual Studio Code..."
sudo apt purge -y code
rm -rf ~/.vscode
echo "VS Code removed!"

# Remove Google Chrome
echo "Removing Google Chrome..."
sudo apt purge -y google-chrome-stable
echo "Google Chrome removed!"

# Remove Playwright
echo "Removing Playwright..."
npm uninstall -g playwright
echo "Playwright removed!"

# Remove MySQL Server
echo "Removing MySQL Server..."
sudo systemctl stop mysql
sudo apt purge -y mysql-server
sudo rm -rf /var/lib/mysql
sudo rm -rf /etc/mysql
echo "MySQL Server removed!"

# Remove development group
echo "Removing development group..."
sudo delgroup developers
echo "Development group removed!"

echo "All tools and apps have been successfully removed!"
