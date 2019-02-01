# Variables

# Aliases 
alias py="python3"
alias vzp="vim ~/.zshrc"
alias vzt="vim ~/.oh-my-zsh/themes/tino.zsh-theme"
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias xo="xdg-open"
alias setup="cd ~/gitRepos/cvonsteg/setups"
alias zshup="cd $HOME/gitRepos/cvonsteg/setups && git pull && source $HOME/.zshrc && cd -"
alias kernels="cd $HOME/.local/share/jupyter/kernels"
alias sauce="source $HOME/.zshrc"
alias gbd="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

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


function pgs () {
    environ=$1
    db=$2

    if [ $environ = 'prod' ]; 
    then
        ACCESS_HOST=$PROD_HOST
        ACCESS_PWD=$PROD_PASS
    elif [ $environ = 'dev' ];
    then
        ACCESS_HOST=$DB_HOST
        ACCESS_PWD=$DB_PASS
    else
        echo "Please specify environment 'prod' or 'dev'"
    fi 
    
    if [ -z "$ACCESS_HOST" ] || [ -z "$ACCESS_PWD" ];
    then
        set -e
    else
        echo "Connecting to RDS $environ.$db ..."

        export PGPASSWORD=$ACCESS_PWD 
        psql -h $ACCESS_HOST -U $DB_USER -p 5432 -d $db 
    fi
}
