#!/bin/bash

# MODULE: graphical.sh
# DESCRIPTION: Sets up graphical user interface with GNOME, Wayland, Mutter, GDM, and Vendor Neural Dispatch with support for OpenGL and GLX.
# NOTE: If using an Nvidia GPU, do not execute before installing drivers and building kernel modules.

PACKAGES=(
    # Vendor Neutral Dispatch
    libglvnd-opengl                     # OpenGL Support
    libglvnd-glx                        # GLX Support

    # Display server
    xorg-x11-server-Xwayland             # Wayland

    # GNOME Desktop environment 
    mutter                               # Window manager
    gnome-session-wayland-session        # Wayland based GNOME
    gnome-shell                          # Window management and application launching
    gdm                                  # Display manager (login)
)


sudo dnf install -y "${PACKAGES[@]}"

sudo systemctl enable gdm.service
sudo systemctl set-default graphical.target
