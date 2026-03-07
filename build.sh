#!/bin/bash

# MODULE: build.sh
# DESCRIPTION: Installs necessary software for building kernel modules.
# NOTE: Recommended to execute directly after repository setup.

PACKAGES=(
    kernel-devel-$(uname -r)        # Package for building kernel modules
    kernel-headers                  # Header files for the kernel
    gcc                             # Compilers
    make                            # Makefile Tool
    akmods                          # Automatic kmods build and install tool 
)

sudo dnf install -y "${PACKAGES[@]}"