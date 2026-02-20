if command -sq flatpak
    prepend_to_path /var/lib/flatpak/exports/bin
    prepend_to_path "$HOME/.local/share/flatpak/exports/bin"
end
