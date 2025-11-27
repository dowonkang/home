#!/usr/bin/env sh

# Script to symlink configuration files with backup functionality
# Usage: ./scripts/symlink.sh <files...>
# Example: ./scripts/symlink.sh .config/hypr/*

# Variables
backup_dir="$HOME/.config/backup"
repo_dir="$(pwd)"

# Check if arguments are provided
if [ $# -eq 0 ]; then
	printf "Usage: %s <files...>\n" "$0"
	printf "Example: %s .config/hypr/*\n" "$0"
	exit 1
fi

# Validate all files exist first
for file in "$@"; do
	target="$repo_dir/$file"
	if [ ! -e "$target" ]; then
		printf "Error: %s does not exist\n" "$target"
		exit 1
	fi
done

# Function to backup and symlink a file
backup_and_link() {
	rel_path="$1"

	# Construct target paths
	target="$repo_dir/$rel_path"
	link_name="$HOME/$rel_path"
	link_dir="$(dirname "$link_name")"
	backup_subdir="$backup_dir/$(dirname "$rel_path")"

	# Create link directory if it doesn't exist
	if [ ! -d "$link_dir" ]; then
		printf "Creating directory %s\n" "$link_dir"
		mkdir -p "$link_dir"
	fi

	# Check if target already exists and is not a symlink to our file
	if [ -e "$link_name" ] || [ -L "$link_name" ]; then
		# Skip if it's already a symlink to the correct target
		if [ -L "$link_name" ] && [ "$(readlink "$link_name")" = "$target" ]; then
			printf "Skipping %s (already linked)\n" "$link_name"
			return 0
		fi

		# Create backup directory if needed
		if [ ! -d "$backup_subdir" ]; then
			printf "Creating backup directory at %s\n" "$backup_subdir"
			mkdir -p "$backup_subdir"
		fi

		# Create backup
		printf "Backing up existing %s to %s\n" "$link_name" "$backup_subdir/"
		mv "$link_name" "$backup_subdir/"
	fi

	# Create symlink
	printf "Creating symlink: %s -> %s\n" "$link_name" "$target"
	ln -sf "$target" "$link_name"
}

# Process each argument
for file in "$@"; do
	backup_and_link "$file"
done

printf "Symlinking completed!\n"

unset backup_dir repo_dir rel_path target link_name link_dir backup_subdir file
