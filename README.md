# uname-r-discord-rich-presence
Uname -r discord rich presence


This is a program that sets your discord rich presence as your kernel version using [EasyRP](https://github.com/Pizzabelly/EasyRP) and systemd

# Easy Install

Click installer and click download. Then double-click it. (Same as install.sh just double-clickable) If it isnt double-clickable then go to properties and allow execution

# Still easy install
Clone this repo, then cd into it, chmod and run the installer.

# How Do I disable it?
Run this to temporarily stop it:
```
$ systemctl stop --user drp.service
```
Run this to permanently stop it:
```
$ systemctl disable --user --now drp.service
```
# Uninstall
```
$ rm -rf ~/.local/share/uname-drp ~/.config/systemd/user/drp.service
$ systemctl disable --user --now drp.service
```
