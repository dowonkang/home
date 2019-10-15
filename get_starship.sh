#!/usr/bin/env sh

curl --location https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz | tar --extract --gunzip --directory "$HOME"/.local/bin/
