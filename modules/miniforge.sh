# Installing Miniforge (conda, mamba)

# Variable setup
INSTALL_DIR="$HOME/miniforge3"
INSTALLER_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
TEMP_FILE="/tmp/miniforge.sh"

# Downloading
curl -L "$INSTALLER_URL" -o "$TEMP_FILE"

# Installing
bash "$TEMP_FILE" -b -p "$INSTALL_DIR" -u

# Initializing
"$INSTALL_DIR/bin/conda" init bash

# Cleanup
rm "$TEMP_FILE"

# Optimization - Auto activate off
"$INSTALL_DIR/bin/conda" config --set auto_activate_base false