
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

PS1='${debian_chroot:+($debian_chroot)}\[\033[07;01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\! \$ '
PS2='\$ ---> '
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND=`history -a`
alias lsl='ls -lGh'

export PS1
export PS2

#=============================================================================
# Defautl editor
#-----------------------------------------------------------------------------
export EDITOR=vim
#=============================================================================

#=============================================================================
# SSH support function
#-----------------------------------------------------------------------------
SSH_ENV="$HOME/.ssh/environment"

function start_agent {
  echo "Initializing new SSH agent..."
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add ~/.ssh/github_id_rsa;
}

#-----------------------------------------------------------------------------
# Source SSH settings, if applicable
#-----------------------------------------------------------------------------
#if [ -f "${SSH_ENV}" ]; then
#  . "${SSH_ENV}" > /dev/null
#  #ps ${SSH_AGENT_PID} doesn't work under cywgin
#  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
#    start_agent;
#  }
#else
#  start_agent;
#fi
#
#=============================================================================

#=============================================================================
# Python virtualenv and virtualenvwrapper variables
#-----------------------------------------------------------------------------
#
#export WORKON_HOME=$HOME/py_virtual_envs
#source /usr/bin/virtualenvwrapper_bashrc
#
#export PIP_VIRTUALENV_BASE=$WORKON_HOME
#export PIP_RESPECT_VIRTUALENV=true
#export PIP_DOWNLOAD_CACHE=$HOME/pip_download_cache
#
#=============================================================================


#=============================================================================
# GO env variables
#-----------------------------------------------------------------------------
#
#export GOROOT=$HOME/src_build/go
#export GOARCH=amd64
#export GOOS=linux
#export GOBIN=$GOROOT/bin
#
#=============================================================================

#=============================================================================
# Include ~/bin to PATH
#-----------------------------------------------------------------------------
#
#export PATH=$GOBIN:/home/beast/bin:$PATH
#
#=============================================================================
