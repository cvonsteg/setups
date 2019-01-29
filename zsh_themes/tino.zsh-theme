# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "
# PROMPT='%B%{$fg[green]%}[%*][%n@%M]%{$reset_color%} %B%{${fg[red]}%}%~%{$reset_color%}%B$(git_prompt_info) %Bλ%b ' 
PROMPT='%B%{${fg[red]}%}%~%{$reset_color%}%B$(git_prompt_info) %Bλ%b ' 

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
