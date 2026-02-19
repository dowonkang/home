#!/usr/bin/env sh

if command -v youtube-dl >/dev/null 2>&1; then
	alias ytdl-mp3='youtube-dl -x --audio-format mp3 --embed-thumbnail -o '\''%(title)s.%(ext)s'\'''
	alias ytdl-mp3ls='youtube-dl --yes-playlist -x --audio-format mp3 --embed-thumbnail -o '\''%(playlist)s/%(playlist_index)s %(title)s.%(ext)s'\'''
fi
