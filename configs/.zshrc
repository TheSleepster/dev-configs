# Path to your Oh My Zsh installation.
ZSH_THEME="robbyrussell"
plugins=(git)

export ZSH="$HOME/.oh-my-zsh/"
export PATH="$PATH":"$HOME/.config/bin/"
export PATH="$PATH":"$HOME/src/gf/"
export PATH="$PATH":"$HOME/dev/bin/"

export PATH=~/.jai/bin/:$PATH

bindkey -s ^f "tmux-sessionizer.sh\n"

source $ZSH/oh-my-zsh.sh
