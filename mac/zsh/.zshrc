# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# personal aliases
if [[ -r $HOME/.zsh_aliases ]]; then
  source $HOME/.zsh_aliases
fi

# git aliases
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gbd='git branch -D'
alias gb='git branch'
alias glg='git log'
alias glom='git pull origin master'
alias glo='git pull origin'
alias gfo='git fetch origin'
alias gst='git status'
alias ga='git add'
alias gc='git commit'

# pyenv stuff

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias fontbook="open -b com.apple.FontBook"
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
