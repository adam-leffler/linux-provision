#!/bin/bash

# MODULE: development.sh
# DESCRIPTION: Installs Python stack, assemblers, compilers, interpreters, libraries, engines.
# NOTE: Script executes miniforge.sh. Then, it also sets up mamba environments.

MODULES_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)


PACKAGES=(
    # Utilities
    make            # Makefile Tool
    nasm            # Assembler
    gcc             # Compilers
    gcc-c++         # C++ support for GCC
    nodejs          # JavaScript Runtime

    # Collaboration
    git             # Git support

    # Python
    python3         # Python 3 Interpreter
    python3-devel   # Python 3 development libraries
    python3-pip     # pip package manager

    # Power tools
    godot           # Godot engine
)

sudo dnf install -y --setopt=install_weak_deps=False "${PACKAGES[@]}"


# Installing Miniforge 
bash "$MODULES_DIR/miniforge.sh"

# Initializing conda and mamba into the current script
source "$HOME/miniforge3/etc/profile.d/conda.sh"
source "$HOME/miniforge3/etc/profile.d/mamba.sh"

mamba create -n development_1 -y python=3.12 jupyter


