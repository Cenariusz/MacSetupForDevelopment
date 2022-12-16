# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-completions
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# Add zsh-completions to FPATH
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

# Load configs
source $ZSH/oh-my-zsh.sh

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

if [ -f ~/.zsh_profile ]; then
    source ~/.zsh_profile
fi

# Run/use Starship
eval "$(starship init zsh)"
