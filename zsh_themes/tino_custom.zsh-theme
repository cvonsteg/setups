#PROMPT='[%*] %B%{$fg[blue]%}%n@%M%{$reset_color%}:%B%{${fg[blue]}%}%~%{$reset_color%}%B$(git_prompt_info) %Bλ%b '
PROMPT='%B%{$fg[white]%}%n@%M%{$reset_color%}:%B%{${fg[green]}%}%~%{$reset_color%}%B$(git_prompt_info) %B$%b '
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
