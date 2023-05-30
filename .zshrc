# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/long/.oh-my-zsh"

# zsh
ZSH_DISABLE_COMPFIX=true

# theme
ZSH_THEME="agnoster"

# plugins
plugins=(git autojump colorize extract cmdtime)

source $ZSH/oh-my-zsh.sh

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# alias
alias vi="nvim"
alias vim="nvim"
alias codeql="/home/long/codeql-linux64/codeql/codeql"
alias gitclean="git br | grep long | xargs -I {} git br -D {}"

export AZURE_DEVOPS_EXT_PAT=krmrqnutniqvewqd7gsoxrpgihhrrrgs5z6drpfxysq36tuk6xua
eval `dircolors ~/.dircolors`

# system editor
export VISUAL=vim
export EDITOR="$VISUAL"

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)(╬ Ò ‸ Ó)"
  fi
}

[[ -s "/home/long/.gvm/scripts/gvm" ]] && source "/home/long/.gvm/scripts/gvm"


# pnpm
export PNPM_HOME="/home/long/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# lvim
export PATH="/home/long/.local/bin:$PATH"
# lvim end

# deno
export DENO_INSTALL="/home/long/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# deno end
