PATH=${HOME}/bin:${PATH}
source $(dirname $(gem which colorls))/tab_complete.sh
alias rm=rmtrash
[[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh
alias cat=ccat
alias paru='paru --color always'
alias parin='paru -S'
alias paq='pacman -Q'
alias parem='paru -R'
alias parfetch='paru -Qua'
alias parupd='paru -Sua'
alias parfind='paru --search name'
alias parsearch='parfind'
alias parpkg='paru --getpkgbuild --print'
alias parinfo='paru -Si'
alias vim='nvim'
export EDITOR=nvim


if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"

ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting catimg sudo zsh-interactive-cd archlinux colorize screen)
source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias lsr="/usr/bin/ls"
alias ls="colorls"
alias la="colorls -al"
