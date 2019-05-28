# # # # # # # # # # # # IMPORTANT # # # # # # # # # # # # # # 
# this zshrc requires a locally stored environment variable #
# named $HOME to account for different home dir paths       #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


# PATH TO .oh-my-zsh CONFIG 
  export ZSH="$HOME/.oh-my-zsh"

# LOAD THEME
  ZSH_THEME="tino_custom"

# LOAD ALL ALIASES 
for file in $HOME/.aliases/*; do 
    source "$file"
done

# LOAD PLUGINS
plugins=(
  git
  tmux
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /snap/terraform/216/bin/terraform terraform
