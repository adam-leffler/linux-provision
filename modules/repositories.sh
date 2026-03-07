#!/bin/bash

# MODULE: repositories.sh
# DESCRIPTION: Setup of RPM repositories one-by-one.
# WARNING: Added repositories might contain proprietary software!

# rpm fusion free
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# rpm fusion nonfree
sudo dnf install -y https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# workstation repositories
sudo dnf install -y fedora-workstation-repositories

# google chrome
sudo dnf config-manager setopt google-chrome.enabled=1

# signal
sudo dnf config-manager addrepo --from-repofile=https://download.opensuse.org/repositories/network:im:signal/Fedora_42/network:im:signal.repo

# microsoft visual studio code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null


# finalizing
sudo dnf check-update -y
sudo dnf makecache
sudo dnf upgrade -y