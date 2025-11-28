#!/usr/bin/env sh

# Script to symlink shell configuration files
# Uses symlink.sh for backup and linking functionality

script_dir="$(dirname "$0")"

"$script_dir/symlink.sh" .config/sh .config/git .profile .bash_profile .bashrc
