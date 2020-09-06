#/bin/bash

# Remove actual configuration
rm -Rf ./awesome
rm -Rf ./zsh
rm -Rf ./sublime

# Add new configuration
cp -R ~/.config/awesome ./awesome
mkdir zsh
cp ~/.zshrc ./zsh/.zshrc
cp ~/.bashrc ./zsh/.bashrc
cp ~/.bash_profile ./zsh/.bash_profile
cp -R ~/Desktop/SublimePackagesBackup ./sublime

