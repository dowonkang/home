#!/usr/bin/env sh

# Script to symlink shell configuration files with backup functionality

# Variables
backup_dir="$HOME/.config/backup"
repo_dir="$(pwd)"

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
	printf "Creating backup directory at %s\n" "$backup_dir"
	mkdir -p "$backup_dir"
fi

# Function to backup and symlink a file/directory
backup_and_link() {
	target="$1"
	link_name="$2"
	
	# Check if target already exists
	if [ -e "$link_name" ] || [ -L "$link_name" ]; then
		# Create backup
		printf "Backing up existing %s to %s\n" "$link_name" "$backup_dir"
		mv "$link_name" "$backup_dir/"
	fi
	
	# Create symlink
	printf "Creating symlink from %s to %s\n" "$target" "$link_name"
	ln -sf "$target" "$link_name"
}

# Symlink .config/sh directory
backup_and_link "$repo_dir/.config/sh" "$HOME/.config/sh"

# Symlink .bashrc file
backup_and_link "$repo_dir/.bashrc" "$HOME/.bashrc"

printf "Symlinking completed successfully!\n"

unset backup_dir repo_dir target link_name
