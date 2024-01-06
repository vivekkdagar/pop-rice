#!/bin/bash

# Check if the script is run with superuser privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit
fi

# Package installation commands
install_packages() {
  # Update package lists
  apt update

  # Install packages
  apt install -y nala vlc timeshift synaptic exa trash-cli neovim htop bat cmake
}

# Execute the installation function
install_packages

echo "Package installation completed."
