if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi

export EDITOR=nvim
export PATH="$PATH:$HOME/bin:$HOME/go/bin" 
export FZF_DEFAULT_OPTS='--color=fg:#a9b1d6,bg:#1a1b26,hl:#7aa2f7,fg+:#c0caf5,bg+:#24283b,hl+:#7aa2f7'
