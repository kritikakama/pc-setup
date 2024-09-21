#!/bin/bash

# Update the package list
echo "Updating package list..."
sudo apt update

# Install warp command line
echo "Installing warp command line..."
curl https://raw.githubusercontent.com/warpdotdev/Warp/main/install.sh | bash
echo "Warp installed!"

# Install Zed code platform
echo "Installing Zed code platform..."
wget -qO ~/Downloads/zed.AppImage https://github.com/zed-industries/zed/releases/latest/download/zed-x86_64.AppImage
chmod +x ~/Downloads/zed.AppImage
sudo mv ~/Downloads/zed.AppImage /usr/local/bin/zed
echo "Zed installed!"

# Install npm and Node.js
echo "Installing npm and Node.js..."
sudo apt install -y npm
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
echo "npm and Node.js installed!"

# Install JVM (Java Virtual Machine)
echo "Installing JVM..."
sudo apt install -y default-jdk
echo "JVM installed!"

# Install Python
echo "Installing Python..."
sudo apt install -y python3 python3-pip
echo "Python installed!"

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Oh My Zsh installed!"

# Install pnpm
echo "Installing pnpm..."
curl -fsSL https://get.pnpm.io/install.sh | sh -
echo "pnpm installed!"

# Install nvm (Node Version Manager)
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
echo "nvm installed!"

# Install VS Code
echo "Installing Visual Studio Code..."
wget -qO- https://update.code.visualstudio.com/latest/linux-deb-x64/stable | sudo apt install -y ./code_*.deb
echo "VS Code installed!"

# Install Google Chrome
echo "Installing Google Chrome..."
wget -qO- https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb | sudo apt install -y ./google-chrome*.deb
echo "Google Chrome installed!"

# Install Playwright
echo "Installing Playwright..."
npm install -g playwright
echo "Playwright installed!"

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt install -y mysql-server
sudo systemctl start mysql
sudo systemctl enable mysql
echo "MySQL Server installed and running!"

# Create a development group and add the current user
echo "Creating development group and adding user..."
sudo groupadd developers
sudo usermod -aG developers $USER
echo "Group created and user added!"

echo "All installations completed successfully!"
