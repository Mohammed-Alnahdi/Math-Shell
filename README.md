# Math-Shell
Suckless dwm, simple termina, and dmenu.

================================

In this repository, I "git" from suckless.org the source of dwm and its simple terminal with tools. I add some of feature like status2d to give some of colores to awesome icons. On other hand, I add some patch to make alpha to simple terminal and change the fonts.

## Before Installation

What do you need to "git" this setup of dwm?

1- You need to install *xorg* from your **Package Manager**.

2- copy xinitrc from X11 in $HOME without root mode.

```bash
cp /etc/X11/xinit/xinitrc ~/.xinitrc
```

3- delete last five line from ~/.xinitrc 

```bash
twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &
exec xterm -geometry 80x66+0+0 -name login
```

4- You must install picom package to active alpha opicity **Package Manager**.

5- You must install nitrogen from your **Package Manager**

## Installation 

run the script 

```bash
sudo bash install.sh
```
