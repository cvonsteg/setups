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

# for aws-iam-authenticator
export PATH=$HOME/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

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

complete -o nospace -C /usr/local/bin/terraform terraform

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

FILE=$HOME/.bash_profile
if [ -f "$FILE" ]; then
    source $FILE
fi


