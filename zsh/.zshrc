export PATH="/usr/local/bin/:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export MANPAGER="nvim +Man!"
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

ZSH_THEME="robbyrussell"
plugins=(git gitfast git-commit node npm nvm tmux copybuffer copyfile copypath docker docker-compose fzf gh zsh-interactive-cd)

[[ $- != *i* ]] && return

source $ZSH/oh-my-zsh.sh

### CHANGE TITLE OF TERMINALS
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|alacritty|st|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
        ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

alias v="nvim"
alias ll='exa -al --color=always --group-directories-first'
alias rmd='rm -rf'
alias ..='cd ..'

alias work="cd ~/work"
alias dev="cd ~/dev"
alias web="cd ~/dev/web"

alias grep='grep --color=auto'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias df='df -h'
alias free='free -m'

alias update='sudo apt-get update -y'
alias upgrade='sudo apt-get upgrade -y'
alias install='sudo apt-get install'
alias remove='sudo apt-get --purge remove'

alias st='git st'
alias ci='git ci -m'
alias cia='git ci -am'
alias co='git checkout'
alias br='git br'
alias push='git push origin'
alias pull='git pull origin'
alias log='git lg'
alias addall='git add .'
alias add='git add'

alias tls='tmux ls'
alias tla='tmux a'
alias tses='/home/gm/bin/.local/scripts/tmux-sessionizer.sh'
alias todo='/home/gm/open_todo.sh'

alias cndm='clear && nodemon'

alias ffn='selected_file=$(find . -type f | fzf); nvim $selected_file'
alias edoc='codium'
alias killp='function _killport(){ lsof -ti tcp:$1 | xargs kill -9 }; _killport'
alias hs='selected_command=$(history | fzf --tac --preview="echo {}" --preview-window=down:3:wrap | sed "s/^[0-9 ]*//") && echo -n "$selected_command" | { command -v pbcopy >/dev/null && pbcopy; command -v xclip >/dev/null && xclip -selection clipboard; }'

alias gol='cndm ~/dev/web/vanilla/game-of-life/game-of-life.js'

if [ -f /etc/bash.command-not-found ]; then
	. /etc/bash.command-not-found
fi

bindkey -v
xset r rate 250 70

# for rust
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm zsh_completion
