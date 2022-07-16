# - Uncomment to start tmux session when shell is opened
#ZSH_TMUX_AUTOSTART=true


#=========================================================
# - Powerlevle10k section
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#=========================================================


# - Exports

export ZSH="$HOME/.oh-my-zsh" # Path to oh-my-zsh folder
export ROS_DOMAIN_ID=23 # ROS domain ID
export LIBRARY_PATH=$LIBRARY_PATH:/opt/ros/humble/
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border' # FZF
export PATH=$PATH:$HOME/.platformio/penv/bin


#=========================================================

# - Theme
ZSH_THEME="powerlevel10k/powerlevel10k"


#=========================================================

# Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
)

# - Sourcing
source $ZSH/oh-my-zsh.sh # oh-my-zsh
source /opt/ros/humble/setup.zsh # ROS
source /home/pedros235/.cargo/env # RUST Cargo
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # FZF

#=========================================================

# - Enabling VIM Keybindings in shell
bindkey -v


#=========================================================

# - Alias

alias nv='nvim' # short alias to call nvim
alias nv_config='cd $HOME/.config/nvim' # alias for nvim config path

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gps='git push'
alias gpl='git pull'

# - dotfiles git bare repo config 
alias config='/usr/bin/git --git-dir=$HOME/code/github/dotfiles/ --work-tree=$HOME'


#=========================================================

# ROS2 Setup
# argcomplete for ros2 & colcon
eval "$(register-python-argcomplete3 ros2)"
eval "$(register-python-argcomplete3 colcon)"



# Begin: PlatformIO Core completion support
eval "$(_PIO_COMPLETE=zsh_source pio)"
# End: PlatformIO Core completion support

