#!/bin/bash
mkdir -p ~/dotfiles_old
mv ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ~/dotfiles_old/
ln -s ~/dotfiles/sublime/Preferences.sublime-settings  ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings