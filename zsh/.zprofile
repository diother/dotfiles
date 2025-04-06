# if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
#     exec startx
# fi

export EDITOR=nvim
export PATH="$PATH:$HOME/bin:$HOME/go/bin:$HOME/.cargo/bin:/opt/resolve/bin"
export FZF_DEFAULT_OPTS='--color=fg:#b5bdc5,bg:#000000,hl:#5080ff,fg+:#5080ff,bg+:#262626,hl+:#5080ff'

export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_SCALE_FACTOR=2
export QT_QPA_PLATFORMTHEME=gtk2

export PNPM_HOME="/home/robert/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
