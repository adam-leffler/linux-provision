#!/bin/bash

# MODULE: virtualization.sh
# DESCRIPTION: Installs and configures virtualization solutions. Namely QEMU/KVM and Virtualbox.
# WARNING: Triggers kernel module compilation; do not interrupt.

PACKAGES=(
    # KVM/QEMU 
    qemu-kvm                    # QEMU/KVM Metapackage
    libvirt                     # Virtualization API Library
    virt-manager                # Desktop tool for VM management
    virt-viewer                 # Virtual Machine Viewer
    
    # VirtualBox 
    VirtualBox                  # OracleVM VirtualBox
    akmod-VirtualBox            # Akmod package for VirtualBox kernel modules
    
    # Kernel Build Tools
    kernel-devel-$(uname -r)    # Package for building kernel modules
    kernel-headers              # Header files for the kernel
)

sudo dnf install -y "${VIRT_PACKAGES[@]}"


# Building kernel modules
sudo akmods --force

# Enabling virtualization
sudo systemctl enable --now libvirtd
sudo systemctl enable --now vboxdrv

# Granting permission
sudo usermod -a -G libvirt $USER
sudo usermod -a -G vboxusers $USER

