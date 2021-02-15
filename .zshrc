[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/general.zsh ] && source $HOME/.config/zsh/general.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/functions.zsh ] && source $HOME/.config/zsh/functions.zsh

# load fzf shortcuts and completions
if [ -f $HOME/.fzf.zsh ]; then source $HOME/.fzf.zsh
else
  [ -f /usr/share/fzf/completions.zsh ] && source /usr/share/fzf/completions.zsh
  [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
fi
