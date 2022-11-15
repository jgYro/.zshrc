export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="duellj"
plugins=(
    git
    zsh-autosuggestions
    web-search
    jsontools
)

source $ZSH/oh-my-zsh.sh

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux a -t default || exec tmux new -s default && exit;
fi
export COLORTERM=truecolor
