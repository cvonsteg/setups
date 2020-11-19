#! /bin/bash

echo "Installing SpaceVim"
curl -sLf https://spacevim.org/install.sh | bash

echo "Syncing SpaceVim config"
mkdir $HOME/.SpaceVim.d

if [[ ! -z $GIT_CVONSTEG ]]; then
  ln -s $GIT_CVONSTEG/setups/.vim/init.toml $HOME/.SpaceVim.d/init.toml
else
  echo "Please define the location of your personal git repo (will be stored as GIT_CVONSTEG)"
  read personal_git_path
  ln -s $personal_git_path/setups/.vim/init.toml $HOME/.SpaceVim.d/inti.toml 
fi

