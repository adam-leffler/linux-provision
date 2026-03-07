#!/bin/bash

# MODULE: nvidia.sh
# DESCRIPTION: Installs Proprietary NVIDIA drivers and Akmods.
# WARNING: Triggers kernel module compilation; do not interrupt.
# REBOOT: Required after execution for driver to initialize.

PACKAGES=(
    kernel-devel-$(uname -r)    # Package for building kernel modules
    kernel-headers              # Header files for the kernel
    akmod-nvidia                # Nvidia kernel modules
    xorg-x11-drv-nvidia-cuda    # CUDA Driver tools
    nvidia-settings             # Nvidia Control Panel
    nvidia-persistenced         # Driver state mainteanance
)


sudo dnf install -y "${PACKAGES[@]}"

# Building kernel modules
sudo akmods --force 