#!/bin/bash

# MODULE: office.sh
# DESCRIPTION: Installs productivity software, such as calculator, multimedia, IDEs.
# WARNING: Might contain proprietary software.

PACKAGES=(
    # Office
    libreoffice             # Office software package
    gnome-calculator        # Calculator app
    atril                   # Document reader
    code                    # Integrated Development Environment

    # Multimedia
    vlc                     # Player
    eog                     # Image viewer

    # Graphical
    krita                   # Drawing software
    gimp                    # Image editor
    blender                 # 3D 

    # Video
    ffmpeg                  # Converter tool
    obs-studio              # Streaming software
    kdenlive                # Video editor


)

sudo dnf install -y "${PACKAGES[@]}"