#!/bin/bash
# Default Theme

cd
mkdir Projects
cd Projects
git clone https://github.com/daniruiz/flat-remix-gtk.git
git clone https://github.com/daniruiz/flat-remix.git
git clone https://github.com/daniruiz/flat-remix-gnome.git

mv .themes .themes-backup
ln -s ~/Projects/flat-remix-gtk ~/.themes

mv .local/share/themes .local/share/themes-backup
ln -s ~/Projects/flat-remix-gnome ~/.local/share/themes

mv .icons .icons-backup
ln -s ~/Projects/flat-remix ~/.icons

gsettings set org.gnome.desktop.interface gtk-theme Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder
gsettings set org.gnome.desktop.interface icon-theme Flat-Remix-Blue-Dark
gsettings set org.gnome.desktop.wm.preferences theme Flat-Remix-Darkest-fullPanel

echo Thanks for supporting the project, its now a part of the Github Arctic Code Vault !! 
echo Check out my GitHub profile at https://github.com/KushagraKarira/Scripts
