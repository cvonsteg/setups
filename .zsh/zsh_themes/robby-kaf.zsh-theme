
PROMPT='%{$fg_bold[white]%}%n%{$fg[white]%}@%{$fg_bold[white]%}%m'
PROMPT+=' %{$fg_bold[red]%}➜ '
PROMPT+='%{$fg[cyan]%}%c '
PROMPT+='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}::%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
