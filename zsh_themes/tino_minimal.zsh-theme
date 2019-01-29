PROMPT='${fg[blue]%}[%*]%{$reset_color%}%{$fg[red]%}[%n@%M]%{$reset_color%}%{${fg[blue]}%}%~%{$reset_color%} $(git_prompt_info) ➜ '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
