# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#     exec startx
# fi

export EDITOR=nvim
export PATH="$PATH:$HOME/bin:$HOME/go/bin:$HOME/.cargo/bin" 
export FZF_DEFAULT_OPTS='--color=fg:#b5bdc5,bg:#000000,hl:#5080ff,fg+:#5080ff,bg+:#262626,hl+:#5080ff'
