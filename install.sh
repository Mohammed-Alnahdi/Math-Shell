#!/bin/bash

echo "Installation Process"

cd dwm-6.2/ 
make clean install 

cd ../st-0.8.4/
make clean install 

cd ../dmenu-5.0/ 
make clean install 

cd ~

echo "# The Keymap" >> .xinitrc
echo "setxkbmap -layout \"us,ara(qwerty)\" -option grp:alt_shift_toggle &" >> .xinitrc
echo "# Wallstore" >> .xinitrc
echo "nitrogen --restore &" >> .xinitrc
echo "# Compostor " >> .xinitrc
echo "picom -f" >> .xinitrc
echo " # execute my dwm" >> .xinitrc
echo "exec dwm" >> .xinitrc

echo "Install is complete"
echo "Written by Mohammed Alnahdi"
echo "mohammed-alnahdi@protonmail.com"
echo "good bye!!!"
