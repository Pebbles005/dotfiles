# .dotfiles

Config files for mint xfce i3 rofi polybar stack

## config prerequisites :

- dunst - dunst (notification manager)
- kitty - kitty , nerd font
- nvim - neovim (https://github.com/neovim/neovim/blob/master/INSTALL.md),
- polybar - polybar (https://github.com/polybar/polybar?tab=readme-ov-file#installation), rofi (rofi configs as well)
- rofi - rofi , rofi-calc (https://github.com/svenstaro/rofi-calc)
- i3 - i3 (https://github.com/polybar/polybar/wiki/Compiling)
- lf - lf (https://github.com/gokcehan/lf), ueberzugpp (https://github.com/jstkdng/ueberzugpp?tab=readme-ov-file), cat, mediainfo, imagemagick, catdoc, docx2txt, odt2txt.
- picom - picom (https://github.com/yshui/picom)
- redshift.conf - redshift
- starship.toml - starship
- tmux - tmux , tpp (https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation) (run 'prefix I' in tmux to install plugins)

## bin prerequisites :

- autotiling - https://pypi.org/project/autotiling/
- lfrun - lf (https://github.com/gokcehan/lf) , ueberzugpp (https://github.com/jstkdng/ueberzugpp?tab=readme-ov-file), cat, mediainfo, imagemagick, catdoc, docx2txt, odt2txt.
- rofi-powermenu,rofi-wifimenu - rofi

## .bashrc prerequisites :

- zoxide
- starship,
- bash,
- bash-completion,
- tar,
- neovim (new version),
- bat
- fzf
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
    nala remove --purge thunar
    nala remove --purge mintbackup

## vimium-options.json

for vimium plugin in browser


