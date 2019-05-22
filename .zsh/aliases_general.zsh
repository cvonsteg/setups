# Variables

# Aliases 
alias py="python3"
alias vzp="vim $HOME/.zshrc"
alias vzt="vim $HOME/oh-my-zsh/themes/tino.zsh-theme"
alias val="vim $HOME/.aliases/aliases_general.zsh"
alias vrc="vim $HOME/.vimrc"
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias xo="xdg-open"
alias setup="cd $HOME/gitRepos/cvonsteg/setups"
alias zshup="cd $HOME/gitRepos/cvonsteg/setups && git pull && source $HOME/.zshrc && cd -"
alias kernels="cd $HOME/.local/share/jupyter/kernels"
alias sauce="source $HOME/.zshrc"
alias branchcheck="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias osg="chrome https://ohshitgit.com/ -d"
alias dcf="docker-compose -f"
alias root="sudo -s"

# Functions
function nwl () {
    nosetests --nocapture $1
}

function copyvar () {
    echo -n $1 | xclip -selection clipboard    
}

function copycat () {
    cat $1 | xclip -selection clipboard
}

function init_venv() {
  venv_dir=$1
  python3.7 -m venv "$venv_dir"
  venv "$venv_dir"
  pip install wheel
  if [ -f requirements.txt ]; then
    pip install -r requirements.txt
  fi
}

function mkvenv() {
  venv_dir=${1:-.venv}
  if [ ! -d "$venv_dir" ]; then
    init_venv "$venv_dir" >&2
  fi
  echo "$venv_dir"
}

function venv() {
  venv_dir=$(mkvenv "$1")
  . $venv_dir/bin/activate
}

function pykernel() {
    if [ ! -a "$VIRTUAL_ENV" ]
    then 
        venv .venv
    fi
    default_name=${PWD##*/}
    pip install ipykernel
    ipython kernel install --user --name=${1:-$default_name}
}

function showme() {
    ls -la | grep $1
}

# Lazy type testing
function meinpy() {
	dicts_to_check=($(ls -d */ | grep -v '__pycache__/|scratch/|logs/'))
	for i in "${dicts_to_check[@]}";
	do
		printf "Type checking $i..."
	       	mypy --ignore-missing-imports "$i"
		printf "\n"
	done

}

# Python testing/checking dry-run
function bauhaus() {
    echo "--- Running Type Checker --- "
	meinpy
    echo "--- Type Checking complete ---"
    echo "--- Running Nosetests ---"
	nosetests -d
    echo "--- Nosetests complete ---"
}

function pi() {
    ssh pi@192.168.1.99
}
