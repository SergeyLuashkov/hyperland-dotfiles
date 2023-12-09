# qtile-dotfiles
### Dependencies

Dependencies base:
- qtile (window manager)
- kitty (terminal)
- dunst (notification)
- capitaine-cursor (cursor)
- ranger (file manager)

Dependencies optional:
- ly (Display manager)
- lxsession-gtk3 (pollkit)
- python-psutils (for sensors)
- less (dependencies for ranger)
- xsettingsd (if xorg for wpgtk)
- lxappearance (for gtk/qt theme)

Dependencies AUR:
- paru or yay
- wpgtk (create theme from wallpaper)
- qt6gtk2

### Install 

Required:
```
pacman -S qtile kitty dunst capitaine-cursor ranger
```
Optional:
```
pacman -S ly lxsession-gtk3 python-psutils less xsettingsd lxappearance
```
aur:
```
paru -S wpgtk qt6gtk2
```

run script install.sh for create link
