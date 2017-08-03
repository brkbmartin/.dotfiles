[[ "$-" != *i* ]] && return

# COMPLETION
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# SOURCES
source ~/.aliases
source ~/.bash_prompt
source ~/.exports

