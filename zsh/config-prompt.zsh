setopt prompt_subst
autoload -Uz vcs_info
autoload -Uz promptinit && promptinit

precmd() {  
  vcs_info
  RPROMPT="${vcs_info_msg_0_}"            
}
PROMPT="%{$fg_purple%}[%n@%m] %{$fg_cyan%}%d %{$at_normal%}"
