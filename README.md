# prerequisites

- dunst
- kitty
- ripgrep
- [node](https://github.com/nodesource/distributions?tab=readme-ov-file#installation-instructions-deb)
- xclip
- [neovim](https://github.com/neovim/neovim/blob/master/BUILD.md) (check for any kind errors in lazy or mason)
  run this for clang-format and cpplint

          apt install python3.10-venv

- [polybar](https://github.com/polybar/polybar/wiki/Compiling) (i.e. all mentioned dependencies in instructions are needed to build)
- rofi
- [rofi-calc](https://github.com/svenstaro/rofi-calc) (use all build commands with sudo)
- bspwm
- sxhkd
- feh
- [lf](https://github.com/gokcehan/lf) (i.e. requires kitty to preview images)
- bat
- mediainfo
- catdoc
- docx2txt
- odt2txt
- ffmpegthumbnailer
- imagemagick
- mpv
- sxiv
- evince
- file-roller
- [picom](https://github.com/yshui/picom)
- redshift
- [starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- tmux , [tpp](https://github.com/tmux-plugins/tpm?tab=readme-ov-file#installation) (i.e. run 'prefix I' in tmux to install plugins)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch?tab=readme-ov-file#linux)
- maim
- brightnessctl
- zoxide
- bat
- fd-find
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-git)
- lxappearance
- xcursor-themes
- htop

# Note

- Base font size for system is 12
- move xorg.conf file to `/etc/X11/` directory
- To swap between caps lock and esc add `XKBOPTIONS="caps:swapescape"` to `/etc/default/keyboard` <br>
- to make brightnessctl work run this command and logout login.

        usermod -a -G video ${USER}

- to increase the font size of tty go to `/etc/default/console-setup` and change the FONTSIZE="16x32"
  and to remove splash screen go to `/etc/default/grub` and replace with this

        GRUB_CMDLINE_LINUX_DEFAULT=

then run

        sudo update-grub

## optional prerequisites

- [i3](https://i3wm.org/docs/repositories.html)
- [autotiling](https://pypi.org/project/autotiling/)
- [ly display manager](https://github.com/fairyglade/ly?tab=readme-ov-file#dependencies)
  ly config file situated in `/etc/ly/config.ini`
  To change the color pallet go to `/lib/systemd/system/ly.service` and add `ExecStartPre=/usr/bin/printf '%%b' '\e]P0191919\e]P7CDD6F4\ec'` in [Service]

          [Service]
          Type=idle
          ExecStartPre=/usr/bin/printf '%%b' '\e]P0191919\e]P7CDD6F4\ec'
          ExecStart=/usr/bin/ly
          StandardInput=tty
          TTYPath=/dev/tty2
          TTYReset=yes
          TTYVHangup=yes

  and can remove lightdm if needed

      nala remove --purge lightdm

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
    nala remove --purge timeshift
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
    nala remove --purge thunar
    nala remove --purge xfce4-screenshooter
    nala remove --purge baobab
    nala remove --purge mintupdate
    nala remove --purge xviewer
