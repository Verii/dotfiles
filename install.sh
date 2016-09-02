#!/bin/bash

if [[ ! -x $(which stow) ]]; then
	echo 'GNU stow is not installed. Aborting ..'
	exit 1
fi

stow -v -t ~/ home
stow -v -t ~/.config config
