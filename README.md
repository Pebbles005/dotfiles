## .dotfiles

Config files for mint xfce i3 rofi polybar stack

## config prerequisites :

- dunst - dunst (notification manager)
- kitty - kitty , nerd font
- nvim - neovim (https://github.com/neovim/neovim/blob/master/BUILD.md) , node (https://github.com/nodesource/distributions?tab=readme-ov-file#installation-instructions) , xclip , ripgrep
- polybar - polybar (https://github.com/polybar/polybar/wiki/Compiling), rofi (rofi configs as well) i.e. all mentioned dependencies are nedded to build
- rofi - rofi , rofi-calc (https://github.com/svenstaro/rofi-calc)
- i3 - i3 (https://i3wm.org/docs/repositories.html) , feh
- lf - lf (https://github.com/gokcehan/lf) (requires kitty to preview images) , bat, mediainfo , catdoc, docx2txt, odt2txt.
- picom - picom (https://github.com/yshui/picom)
- redshift.conf - redshift
- starship.toml - starship (https://starship.rs/guide/#%F0%9F%9A%80-installation)
- tmux - tmux , tpp (https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation) (run 'prefix I' in tmux to install plugins)

## bin prerequisites :

- autotiling - https://pypi.org/project/autotiling/
- rofi-powermenu,rofi-wifimenu - rofi
- lflayer - lf

## .bashrc prerequisites :

- zoxide
- starship,
- bash,
- bash-completion,
- tar,
- neovim (new version),
- bat
- fzf (https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)
- fd-find
- tmux

## bloat removal :

    nala remove --purge redshift-gtk
    nala remove --purge seahorse
    nala remove --purge sticky
    nala remove --purge gnome-calculator
    nala remove --purge simple-scan
    nala remove --purge hexchat pix
    nala remove --purge rhythmbox
    nala remove --purge webapp-manager
    nala remove --purge xfce4-terminal
    nala remove --purge thunderbird
    nala remove --purge transmission-gtk
    nala remove --purge xserver-xorg-video-intel
    nala remove --purge geoclue-2.0
    nala remove --purge hypnotix
    nala remove --purge firefox
    nala remove --purge timeshift
    nala remove --purge firefox-locale-en
    nala remove --purge autojump
    nala remove --purge xfce4-notifyd
    nala remove --purge gnome-keyring
    nala remove --purge gnome-keyring-pkcs11
    nala remove --purge evolution-data-server
    nala remove --purge evolution-data-server-common
    nala remove --purge ibebackend-1.2-10
    nala remove --purge libebook-1.2-20
    nala remove --purge libebook-contacts-1.2-3
    nala remove --purge libecal-2.0-1
    nala remove --purge libedata-book-1.2-26
    nala remove --purge libedata-cal-2.0-1
    nala remove --purge libedataserver-1.2-26
    nala remove --purge libedataserverui-1.2-3
    nala remove --purge xfce4-dict
    nala remove --purge libreoffice-calc
    nala remove --purge libreoffice-math
    nala remove --purge libreoffice-base
    nala remove --purge mintbackup
    nala remove --purge neofetch
    nala remove --purge nip2
    nala remove --purge i3lock
    nala remove --purge xss-lock
    nala remove --purge catfish
    nala remove --purge onboard

## ly display manager

ly display manager - https://github.com/fairyglade/ly?tab=readme-ov-file#dependencies

ly config file situated in `/etc/ly/config.ini`

To change the color pallet go to `/lib/systemd/system/ly.service` go and add `ExecStartPre=/usr/bin/printf '%%b' '\e]P0191919\e]P7CDD6F4\ec'
` in [Service]

    [Service]
    Type=idle
    ExecStartPre=/usr/bin/printf '%%b' '\e]P0191919\e]P7CDD6F4\ec'
    ExecStart=/usr/bin/ly
    StandardInput=tty
    TTYPath=/dev/tty2
    TTYReset=yes
    TTYVHangup=yes

if decided to use ly display manager then to increase the font size of tty go to `/etc/default/console-setup` and change the FONTSIZE="16x32"
then run

    sudo update-grub

and can remove lightdm if needed

    nala remove --purge lightdm

for better grub experience go to `/etc/default/grub` and replace with this

    GRUB_CMDLINE_LINUX_DEFAULT=

then run

    sudo update-grub

## vimium-options.json

backup json for vimium plugin in browser

## system setting

base font size is 12
