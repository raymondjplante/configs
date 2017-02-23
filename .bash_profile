# Enable colors and set for dark terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Setup git completion and prompt support
export GIT_PS1_SHOWDIRTYSTATE=true
. ~/.git-completion.bash
. ~/.git-prompt.sh

# Setup of prompt, color reference -> http://misc.flogisoft.com/bash/tip_colors_and_formatting
export PS1='\[\033[1;94m\][\u:\W$(__git_ps1 " (%s)")]\$ \[\033[0;37m\]'


