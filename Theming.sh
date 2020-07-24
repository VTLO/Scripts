#!/bin/bash

#Installs Flat Remix and StarLabs

# This will install flat remix, flat remix gtk and flat remix gnome

# Firstly, cloning all repo. to ./Projects
cd
mkdir Projects
cd Projects
git clone https://github.com/daniruiz/flat-remix-gtk.git
git clone https://github.com/daniruiz/flat-remix.git
git clone https://github.com/daniruiz/flat-remix-gnome.git

# Clear folder & Copy comtents to .theme
mv .themes .themes-backup
ln -s ~/Projects/flat-remix-gtk ~/.themes
#cp --copy-contents --force ~/Projects/flat-remix-gtk ~/.themes

# Clear folder & copy contents to .theme
mv .local/share/themes .local/share/themes-backup
ln -s ~/Projects/flat-remix-gnome ~/.local/share/themes
#cp --copy-contents --force ~/Projects/flat-remix-gnome ~/.themes

# Clear folder & copy contents to .icons
mv .icons .icons-backup
ln -s ~/Projects/flat-remix ~/.icons
#cp --copy-contents --force ~/Projects/flat-remix ~/.icons

# Option to select the gtk theme
echo Flat-Remix-GTK-Blue
echo Flat-Remix-GTK-Blue-Dark
echo Flat-Remix-GTK-Blue-Darker
echo Flat-Remix-GTK-Blue-Darker-Solid
echo Flat-Remix-GTK-Blue-Darkest
echo Flat-Remix-GTK-Blue-Darkest-NoBorder
echo Flat-Remix-GTK-Blue-Darkest-Solid
echo Flat-Remix-GTK-Blue-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Blue-Dark-Solid
echo Flat-Remix-GTK-Blue-Solid
echo Flat-Remix-GTK-Green
echo Flat-Remix-GTK-Green-Dark
echo Flat-Remix-GTK-Green-Darker
echo Flat-Remix-GTK-Green-Darker-Solid
echo Flat-Remix-GTK-Green-Darkest
echo Flat-Remix-GTK-Green-Darkest-NoBorder
echo Flat-Remix-GTK-Green-Darkest-Solid
echo Flat-Remix-GTK-Green-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Green-Dark-Solid
echo Flat-Remix-GTK-Green-Solid
echo Flat-Remix-GTK-Red
echo Flat-Remix-GTK-Red-Dark
echo Flat-Remix-GTK-Red-Darker
echo Flat-Remix-GTK-Red-Darker-Solid
echo Flat-Remix-GTK-Red-Darkest
echo Flat-Remix-GTK-Red-Darkest-NoBorder
echo Flat-Remix-GTK-Red-Darkest-Solid
echo Flat-Remix-GTK-Red-Darkest-Solid-NoBorder
echo Flat-Remix-GTK-Red-Dark-Solid
echo Flat-Remix-GTK-Red-Solid
echo Flat-Remix-GTK-Yellow
echo Flat-Remix-GTK-Yellow-Dark
echo Flat-Remix-GTK-Yellow-Darker
echo Flat-Remix-GTK-Yellow-Darker-Solid
echo Flat-Remix-GTK-Yellow-Darkest
echo Flat-Remix-GTK-Yellow-Darkest-NoBorder
echo Flat-Remix-GTK-Yellow-Darkest-Solid
echo Flat-Remix-GTK-Yellow-Darkest

echo Enter choice : 
read flatremixgtk
gsettings set org.gnome.desktop.interface gtk-theme "$flatremixgtk"
echo $flatremixgtk Applied !!

# option to select icon theme
echo Flat-Remix-Blue
echo Flat-Remix-Blue-Light
echo Flat-Remix-Blue-Dark
echo Flat-Remix-Yellow
echo Flat-Remix-Yellow-Light
echo Flat-Remix-Yellow-Dark
echo Flat-Remix-Green
echo Flat-Remix-Green-Light
echo Flat-Remix-Green-Dark
echo Flat-Remix-Red
echo Flat-Remix-Red-Light
echo Flat-Remix-Red-Dark

echo Enter Choice : 
read flatremix
gsettings set org.gnome.desktop.interface icon-theme "$flatremix"
echo $flatremix Applied !

#option to select gnome theme
echo Flat-Remix
echo Flat-Remix-fullPanel
echo Flat-Remix-Dark
echo Flat-Remix-Dark-fullPanel
echo Flat-Remix-Darkest
echo Flat-Remix-Darkest-fullPanel
echo Flat-Remix-Miami
echo Flat-Remix-Miami-fullPanel
echo Flat-Remix-Miami-Dark
echo Flat-Remix-Miami-Dark-fullPanel

echo Enter Choice : 
read flatremixgnome
gsettings set org.gnome.desktop.wm.preferences theme "$flatremixgnome"
echo $flatremixgnome Applied !

# Cursor Theme
# This might need su permission as the folder is to be in /usr/share/icons
echo Making Cursor folder in ~/Projects This will be linked to cursor folder in /usr/share
mv ~/Projects/Cursor ~/Project/Cursor-backup
mkdir ~/Projects/Cursor
sudo ln -s ~/Projects/Cursor /usr/share/icons/Cursor
## set default cursor theme to Cursor
echo You can now move any theme to ~/Projects/Cursor and it will be applied instantly

echo Thanks for supporting the project, its now a part of the Github Arctic Code Vault !! 
echo Check out my GitHub profile at https://github.com/KushagraKarira/Scripts
