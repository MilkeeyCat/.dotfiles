if [[ -o login ]] then
    [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && exec startx
else
    exit 1 # Somehow this is a non-bash or non-login shell
fi
