# Enable colors and set for dark terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Git installed via homebrew
# Setup git completion and prompt support installe
export GIT_PS1_SHOWDIRTYSTATE=true
. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/git-prompt.sh

# Setup of prompt, color reference
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
export PS1='\[\033[1;94m\][\u:\W$(__git_ps1 " (%s)")]\$ \[\033[0;37m\]'

# Initialize pyenv and rbenv
eval "$(pyenv init -)"
eval "$(rbenv init -)"

# Add path to postgres bin, used .DMG installer
export PATH=/Library/PostgreSQL/9.6/bin:${PATH}

# Installed mysql community edition 5.7.1 via .DMG installer, 
# adding bin to path for use of CLI tools
export PATH=/usr/local/mysql/bin/:${PATH}

# Set default php to be PHP 5.6 -- installed via homebrew
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

# Needed because homebrew installed php-fpm in /usr/local/sbin
export PATH="/usr/local/sbin:$PATH"

# Due to issue with docker for Mac, this is needed to pass a 
# (non-changing) host IP to containers.  Only works here due to 
# having no password sudo access for ifconfig command in /etc/sudoers 
# for this user
sudo ifconfig lo0 alias 10.200.10.1/24


