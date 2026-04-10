#!/bin/bash

# MODULE: customization.sh
# DESCRIPTION: Installs packages to customize GNOME.

PACKAGES=(
    gnome-extensions-app            # Managing extensions
    gnome-browser-connector         # To use extensions.gnome.org
    gnome-tweaks                    # Tweaks
    openrgb                         # Manage RGB devices
    papirus-icon-theme              # Icons
    default-fonts-core-emoji        # Emojis
)

sudo dnf install -y "${PACKAGES[@]}"
