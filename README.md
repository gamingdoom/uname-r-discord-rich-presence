# uname-r-discord-rich-presence
Uname -r discord rich presence


This is a program that sets your discord rich presence as your kernel version using [EasyRP](https://github.com/Pizzabelly/EasyRP) and systemd

# Install

Depends on ``clang`` and ``cmake``

```
$ git clone https://github.com/gamingdoom/uname-r-discord-rich-presence.git && cd uname-r-discord-rich-presence && bash installer.sh
```

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
$ rm -rf ~/.local/share/uname-drp ~/.config/systemd/user/drp.service & systemctl disable --user --now drp.service
```
