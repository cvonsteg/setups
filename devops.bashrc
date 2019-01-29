alias py="python3"
alias vzp="vim ~/.zshrc"
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias pyw="python -W ignore"

function nwl () {
    nosetests --nocapture $1
}

function copyvar () {
    echo -n $1 | xclip -selection clipboard    
}

function copycat () {
    cat $1 | xclip -selection clipboard
}

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

# Lazy type testing
function meinpy() {
	dicts_to_check=($(ls -d */ | grep -v '__pycache__/'))
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


function new_repo () {
    curl -u $1 https://api.github.com/user/repos -d '{"name":"$2"}'
}

