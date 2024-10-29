#!/bin/sh
main_dir="$HOME/dotfiles"

# Helper function to create parent directories if missing
ensure_dir() {
    if [ ! -d "$1" ]; then
        echo "Creating directory $1"
        sudo mkdir -p "$1"
    fi
}

# Restore individual files
restore_file() {
    local src="$1"
    local dest="$2"
    if [ -f "$src" ]; then
        echo "Restoring $dest"
        sudo cp "$src" "$dest"
    else
        echo "Warning: $src does not exist, skipping."
    fi
}

# Restore directories with rsync
restore_dir() {
    local src="$1"
    local dest="$2"
    ensure_dir "$dest"
    if [ -d "$src" ]; then
        echo "Restoring directory $dest"
        sudo rsync -av --delete-before "$src" "$dest"
    else
        echo "Warning: $src does not exist, skipping."
    fi
}

# Restore directories using rsync (replaces files but keeps extra files intact)
sync_dir_content() {
    local src="$1"
    local dest="$2"
    ensure_dir "$dest"
    if [ -d "$src" ]; then
        echo "Syncing contents from $src to $dest..."
        rsync -avu "$src/" "$dest/"
    else
        echo "Warning: $src does not exist, skipping."
    fi
}

# For adding user.js to firefox profiles
copy_user_js() {
    firefox_profiles="$HOME/.mozilla/firefox"
    user_js="$main_dir/extra/user.js"
    # Check if the Firefox profiles directory exists
    if [ ! -d "$firefox_profiles" ]; then
        echo "Error: Firefox profiles directory not found at $firefox_profiles."
        exit 1
    fi

    # Ensure the user.js file exists
    if [ ! -f "$user_js" ]; then
        echo "Error: $user_js not found."
        exit 1
    fi

    # Iterate over all profile folders (only valid directories with a `prefs.js`)
    for profile in "$firefox_profiles"/*; do
        if [ -d "$profile" ] && [ -f "$profile/prefs.js" ]; then
            echo "Copying user.js to $profile"
            cp "$user_js" "$profile/user.js"
        fi
    done

    echo "user.js has been copied to all Firefox profiles."
}

update_grub() {
    FONT_FILE="/etc/default/console-setup"
    echo "Updating TTY font size to 16x32..."

    if grep -q '^FONTSIZE=' "$FONT_FILE"; then
        sudo sed -i 's/^FONTSIZE=.*/FONTSIZE="16x32"/' "$FONT_FILE"
    else
        echo 'FONTSIZE="16x32"' | sudo tee -a "$FONT_FILE"
    fi

    # Remove splash screen in /etc/default/grub
    GRUB_FILE="/etc/default/grub"
    echo "Removing splash screen settings from GRUB..."

    sudo sed -i 's/^GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=/' "$GRUB_FILE"

    # Update GRUB configuration
    echo "Updating GRUB configuration..."
    sudo update-grub

    echo "Done! Please reboot to apply the changes."
}

# Begin the restore process
restore_file "$main_dir/.bashrc" "$HOME/.bashrc"
restore_file "$main_dir/.Xresources" "$HOME/.Xresources"
restore_file "$main_dir/extra/xorg.conf" "/etc/X11/"

# restore_dir "$main_dir/config/i3/" "$HOME/.config/i3/"
# restore_dir "$main_dir/config/kitty/" "$HOME/.config/kitty/"
restore_dir "$main_dir/config/tmux/" "$HOME/.config/tmux/"
restore_dir "$main_dir/config/alacritty/" "$HOME/.config/alacritty/"
restore_dir "$main_dir/config/polybar/" "$HOME/.config/polybar/"
restore_dir "$main_dir/config/lemonbar/" "$HOME/.config/lemonbar/"
restore_dir "$main_dir/config/lf/" "$HOME/.config/lf/"
restore_dir "$main_dir/config/dunst/" "$HOME/.config/dunst/"
restore_dir "$main_dir/config/nvim/" "$HOME/.config/nvim/"
restore_dir "$main_dir/config/mpv/" "$HOME/.config/mpv/"
restore_dir "$main_dir/config/sxiv/" "$HOME/.config/sxiv/"
restore_dir "$main_dir/config/rofi/" "$HOME/.config/rofi/"
restore_dir "$main_dir/config/bspwm/" "$HOME/.config/bspwm/"
restore_dir "$main_dir/config/picom/" "$HOME/.config/picom/"
restore_dir "$main_dir/config/sxhkd/" "$HOME/.config/sxhkd/"
restore_dir "$main_dir/config/htop/" "$HOME/.config/htop/"
restore_dir "$main_dir/config/fastfetch/" "$HOME/.config/fastfetch/"

restore_file "$main_dir/config/redshift.conf" "$HOME/.config/redshift.conf"
restore_file "$main_dir/config/starship.toml" "$HOME/.config/starship.toml"

restore_dir "$main_dir/.fonts/" "$HOME/.fonts/"

# Sync Pictures and extra directories without deleting other files
sync_dir_content "$main_dir/Pictures" "$HOME/Pictures"
sync_dir_content "$main_dir/extra" "$HOME/Documents"

copy_user_js
update_grub

# Command to enable brightness control logout login to take effect
sudo usermod -a -G video ${USER}
