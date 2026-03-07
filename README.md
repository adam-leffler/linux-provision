This repository contains a Fedora setup instance, intended to be used after a minimal installation.

A minimal installation can be easily achieved if using the Fedora Everything Network Installer.
Make sure to not select any desktop environment in the installer menu (anaconda).

See https://fedoraproject.org/misc/#everythingor

Execution guide:

To run the instance, execute the `main.sh` file, which handles modules. Each module is responsible for the installation of a category of software.

Login with the main user profile.
Change into the directory containing main.sh using cd.
Then, execute `bash ./main.sh`. 
Important! Do not use `sudo`! 
Bash will ask for authentication after running.
It is important to keep every file in the original structure, thus every other bash script should be in the `modules` directory. 

File breakdown:

main.sh - The main configuration file. Execute with `bash ./main.sh`, after changing into its directory from the terminal. The file executes all the module bash scripts in the intended order, as well as displaying messages for understability and ease of use. After running, the script restarts the computer to finish up the process.

`repositories.sh` - This bash script responsible for setting up RPM repositories. Be aware, that this script also sets up repositories containing proprietary software! 

`build.sh` - This bash script is responsible for installing necessary software for building kernel modules. 

`nvidia.sh` - This bash scripts installs drivers for Nvidia GPUs, and builds kernel modules. Remove execution from main.sh if the computer does not have an Nvidia GPU. Also, be aware, this script contains proprietary software.

`graphical.sh` - This bash script is responsible for setting up the graphical user interface. It sets up a Display Server, Window Manager, Display Manager, and the Desktop Environment.

`basic.sh` - This bash script installs the very basic utilities of the system. Storage device management, Cloud storage support, Terminal emulator, File manager, Text editors, etc. 

`development.sh` - This bash script is responsible for the setup of development tools. Assemblers, Compilers, Interpreters, Libraries, Engines. This bash script executes miniforge.sh, then sets up mamba environments.

`miniforge.sh` - This bash script installs Miniforge, which is a conda-forge distribution, containing conda and mamba. It also disables auto_activate_base. Pay attention to the variables, especially INSTALLER_URL. The URL provided might be outdated. If so, please replace for proper functionality.

`virtualization.sh` - This bash script installs and configures virtualization software. Namely QEMU/KVM, and VirtualBox.

`office.sh` - This bash script installs productivity software, such as an office package, calculator, document reader, IDE, multimedia software, image editor, 3D, video editor, etc. Be aware, this script may contain proprietary software.

`internet.sh` - This bash script installs internet software such as web browsers and messaging services. Be aware, this script contains proprietary software.

`customization.sh` - This bash script installs necessary software for the customization of the GNOME Desktop Environment. 
