ZSH_DISABLE_COMPFIX=true
ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"

# remove user from prompt
DEFAULT_USER="$(whoami)"

# zsh plugins
plugins=(git)

# pulls in oh-my-zsh
source $ZSH/oh-my-zsh.sh

# load cli functions
eval "$(zoxide init zsh)"
eval "$(quicknav init zsh)"
