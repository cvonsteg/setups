# Variables

# Aliases 
alias py="python3"
alias vzp="vim $HOME/.zshrc"
alias vzt="vim $HOME/oh-my-zsh/themes/tino.zsh-theme"
alias val="vim $HOME/.aliases/aliases_general.zsh"
alias valac="vim $HOME/.config/alacritty/alacritty.yml"
alias vrc="vim $HOME/.vimrc"
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias setup="cd $GIT_PERSONAL/setups"
alias zshup="cd $GIT_PERSONAL/setups && git pull && source $HOME/.zshrc && cd -"
alias sauce="source $HOME/.zshrc"
alias branchcheck="git for-each-ref --sort=-committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias osg="chrome https://ohshitgit.com/ -d"
alias dcf="docker-compose -f"
alias root="sudo -s"
alias f="fzf-tmux --ansi --color=dark"
alias vf='vim -o "$(f)"'
alias pyt="py.test -W ignore tests/"
alias ltr="la -ltr"
alias ifetch="brctl download"
alias rust-ant="open https://github.com/brson/rust-anthology/blob/master/master-list.md"


function mkmodule () {
  module=$1
  mkdir "$module"
  touch "$module/__init__.py"
}

function gitdiff() {
    if [ "$#" -eq 1 ]; then
       this_branch=$(git symbolic-ref --short HEAD)
       comp_branch=$1
    # elif [ "$#" -eq 2 ]; then
        # this_branch=$1
        # comp_branch=$2
    elif [ "$#" -gt 1 ]; then
        echo "Too many args"
        exit 1
    fi

    git diff --src-prefix="$this_branch/" --dst-prefix="$comp_branch/" $comp_branch
}

# Functions
function nwl () {
    nosetests --nocapture $1
}

function init_venv() {
  venv_dir=$1
  python -m venv "$venv_dir"
  venv "$venv_dir"
  pip install wheel
  if [ -f requirements.txt ]; then
    pip install -r requirements.txt
  fi
  if [ -f requirements_dev.txt ]; then
    pip install -r requirements_dev.txt
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
    default_name=${PWD##*/}
    pip install ipykernel
    ipython kernel install --user --name=${1:-$default_name}
}

function showme() {
    ls -la | grep $1
}

# Lazy type testing
function meinpy() {
	dicts_to_check=($(ls -d */ | grep -v '__pycache__/\|scratch/\|logs/\|vendor/\|scripts/\|notebooks/\|docker/\|batch/'))
	for i in "${dicts_to_check[@]}";
	do
		printf "Checking $i: \n"
        printf "-> \t"
	       	mypy --ignore-missing-imports "$i"
		printf "\n"
	done

}

# Python testing/checking dry-run
function bauhaus() {
    printf " ----- Running Type Checker ----- \n"
	    meinpy
    printf "\n"

    printf " ----- Running Nosetests ----- \n"
        nosetests -d
    printf " ----- Nosetests Complete ----- \n"
}


function delete_dangling() {
    docker rmi $(docker images -qa -f 'dangling=true')
}

function cheat() {
  curl cheat.sh/${1}
}

function rustbook() {
  loc=$HOME/coding/rust/book/book/index.html 
  open -a "Google Chrome" $loc
}

function pygrep() {
  grep -r $1 . --include=\*.py --exclude-dir=vendor --exclude=\*.pyc
}

