# !/bin/sh
main_dir="dotfiles"
# making config folder if it doesnt exist
if [ ! -d "$HOME/${main_dir}/config" ]; then
    mkdir -p "$HOME/${main_dir}/config"
fi

# making font folder if it doesnt exist
if [ ! -d "$HOME/${main_dir}/.fonts" ]; then
    mkdir -p "$HOME/${main_dir}/.fonts"
fi

# copying tmux config
if [ -f "$HOME/.config/tmux/tmux.conf" ]; then
    rsync -av --delete-before "$HOME/.config/tmux/tmux.conf" "$HOME/${main_dir}/config/tmux/"
else
    echo "file does not exist."
fi

# copying redshift config
if [ -f "$HOME/.config/redshift.conf" ]; then
    cp "$HOME/.config/redshift.conf" "$HOME/${main_dir}/config/"
else
    echo "file does not exist."
fi

# copying starship config
if [ -f "$HOME/.config/starship.toml" ]; then
    cp "$HOME/.config/starship.toml" "$HOME/${main_dir}/config/"
else
    echo "file does not exist."
fi

# copying kitty config
if [ -d "$HOME/.config/kitty/" ]; then
    rsync -av --delete-before "$HOME/.config/kitty/" "$HOME/${main_dir}/config/kitty/"
else
    echo "directory does not exist."
fi

# copying alacritty config
if [ -d "$HOME/.config/alacritty/" ]; then
    rsync -av --delete-before "$HOME/.config/alacritty/" "$HOME/${main_dir}/config/alacritty/"
else
    echo "directory does not exist."
fi
# copying polybar config
if [ -d "$HOME/.config/polybar/" ]; then
    rsync -av --delete-before "$HOME/.config/polybar/" "$HOME/${main_dir}/config/polybar/"
else
    echo "directory oes not exist."
fi

# copying lf config
if [ -d "$HOME/.config/lf/" ]; then
    rsync -av --delete-before "$HOME/.config/lf/" "$HOME/${main_dir}/config/lf/"
else
    echo "directory does not exist."
fi

# copying dunst config
if [ -d "$HOME/.config/dunst/" ]; then
    rsync -av --delete-before "$HOME/.config/dunst/" "$HOME/${main_dir}/config/dunst/"
else
    echo "directory does not exist."
fi

# copying nvim config
if [ -d "$HOME/.config/nvim/" ]; then
    rsync -av --delete-before "$HOME/.config/nvim/" "$HOME/${main_dir}/config/nvim/"
else
    echo "directory does not exist."
fi

# copying mpv config
if [ -d "$HOME/.config/mpv/" ]; then
    rsync -av --delete-before "$HOME/.config/mpv/" "$HOME/${main_dir}/config/mpv/"
else
    echo "directory does not exist."
fi

# copying rofi config
if [ -d "$HOME/.config/rofi/" ]; then
    rsync -av --delete-before "$HOME/.config/rofi/" "$HOME/${main_dir}/config/rofi/"
else
    echo "directory does not exist."
fi

# copying i3 config
if [ -d "$HOME/.config/i3/" ]; then
    rsync -av --delete-before "$HOME/.config/i3/" "$HOME/${main_dir}/config/i3/"
else
    echo "directory does not exist."
fi

# copying i3 config
if [ -d "$HOME/.config/bspwm/" ]; then
    rsync -av --delete-before "$HOME/.config/bspwm/" "$HOME/${main_dir}/config/bspwm/"
else
    echo "directory does not exist."
fi

# copying picom config
if [ -d "$HOME/.config/picom/" ]; then
    rsync -av --delete-before "$HOME/.config/picom/" "$HOME/${main_dir}/config/picom/"
else
    echo "directory does not exist."
fi

# copying sxhkd config
if [ -d "$HOME/.config/sxhkd/" ]; then
    rsync -av --delete-before "$HOME/.config/sxhkd/" "$HOME/${main_dir}/config/sxhkd/"
else
    echo "directory does not exist."
fi

# copying htop config
if [ -d "$HOME/.config/htop/" ]; then
    rsync -av --delete-before "$HOME/.config/htop/" "$HOME/${main_dir}/config/htop/"
else
    echo "directory does not exist."
fi

# copying fonts config
if [ -d "$HOME/.fonts/" ]; then
    rsync -av --delete-before "$HOME/.fonts/" "$HOME/${main_dir}/.fonts/"
else
    echo "directory does not exist."
fi

# copying .bashrc config
if [ -f "$HOME/.bashrc" ]; then
    cp "$HOME/.bashrc" "$HOME/${main_dir}/"
else
    echo "file does not exist."
fi

# copying startpage config
if [ -f "$HOME/Documents/startpage.html" ]; then
    cp "$HOME/Documents/startpage.html" "$HOME/${main_dir}/extra/"
else
    echo "file does not exist."
fi

# copying vimium-options config
if [ -f "$HOME/Documents/vimium-options.json" ]; then
    cp "$HOME/Documents/vimium-options.json" "$HOME/${main_dir}/extra/"
else
    echo "file does not exist."
fi

# copying fastfetch config
if [ -d "$HOME/.config/fastfetch/" ]; then
    rsync -av --delete-before "$HOME/.config/fastfetch/" "$HOME/${main_dir}/config/fastfetch/"
else
    echo "directory does not exist."
fi

# copying .Xresources config
if [ -f "$HOME/.Xresources" ]; then
    cp "$HOME/.Xresources" "$HOME/${main_dir}/"
else
    echo "file does not exist."
fi
