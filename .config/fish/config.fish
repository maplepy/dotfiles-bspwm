# Remove fish greeting
set fish_greeting
[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish

#
## ALIASES
#

# Quick aliases
alias v='nvim'
alias df='df -h'
#alias free='free -m'

# Ls
alias ls='lsd --group-dirs first' # shows directories first
alias l='ls -l' # detailed ls
alias la='ls -A' # ls with hidden files
alias ll='ls -lA' # detailed ls with hidden files
alias lt='ls --tree'

# Pacman / yay
alias unlock='sudo rm /var/lib/pacman/db.lck'

alias y='yay'
alias ys='y -S'
alias yss='y -Ss'
alias yr='y -Rcnss'
alias yy='y -Syu --sudoloop --noconfirm'
alias yc='y -Sc'
alias ycc='y -Scc'

# alias pk='pikaur'
# alias pks='pikaur -S'
# alias pkk='pikaur -Syu'
# alias pkr='pikaur -Rssnc'

alias se='sudoedit'
alias pacman_cache='paccache -ruvk 0 && paccache -rvk 2'
alias pacman_orphaned='sudo pacman -Rns (pacman -Qtdq)' # Remove orphaned packages
alias mirror_update='curl -s "https://archlinux.org/mirrorlist/?country=FR&country=GB&country=DE&protocol=https&use_mirror_status=on" | sed -e "s/^#Server/Server/" -e "/^#/d" | rankmirrors -n 5 -'

# Colouring
alias grep='grep --color=auto'
alias egrep='grep --color=auto -E'
alias fgrep='grep --color=auto -F'

# Git related
alias gitpullrecursive='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;'
alias gcl='git clone'
alias gps='git push'
alias gpl='git pull'
alias gst='git status -s'
alias gstt='git status'
alias gad='git add'
alias gdf='git diff'
alias gcm='git commit -m'
alias gchm='git commit --amend -m'
alias gsm='git submodule'
alias gls='git ls-files'
alias glsn='git ls-files | wc -l'
alias gco='git checkout'
alias gbr="git branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"
alias glg='git log --oneline'
#git log --pretty=format:"%C(yellow)%h %Creset%s %Cblue[%cn]"
alias glgg='git log --pretty=format:"%C(yellow)%h%Cred%d %Creset%s%Cblue [%cn]" --decorate --date=short'
alias glgs='git log --pretty=format:"%C(yellow)%h %ad%Cred%d | %Creset%s%Cblue [%cn]" --decorate --date=short'
alias glgr='git log --pretty=format:"%C(yellow)%h %ad%Cred%d | %Creset%s%Cblue [%cn]" --decorate --date=relative'

# Systemctl
alias seble='sudo systemctl enable'
alias sdble='sudo systemctl disable'
alias sstart='sudo systemctl start'
alias srstart='sudo systemctl restart'
alias sstop='sudo systemctl stop'
alias sstatus='sudo systemctl status'

# Misc
alias grub_regen='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias pastehere='sleep 2; xdotool type "$(xclip -o -selection clipboard)"'
alias cleanemptydir='find . -type d -empty -delete' # remove empty directories
alias conda_setup='eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source'

# Config files
alias modalacritty='v ~/.config/alacritty/alacritty.yml'
alias modbspwm='v ~/.config/bspwm/bspwmrc'
alias moddocker='v /docker/docker-compose.yml'
alias moddunst='v ~/.config/dunst/dunstrc'
alias modfish='v ~/.config/fish/config.fish'
alias modgit='v ~/.gitconfig'
alias modmpv='v ~/.config/mpv/'
alias modpicom='v ~/.config/picom/picom.conf'
alias modpolybar='v ~/.config/polybar'
alias modsxhkd='v ~/.config/sxhkd/sxhkdrc'
alias modvim='v ~/.config/nvim/init.vim'

alias fishreload='source ~/.config/fish/config.fish'

alias yinit='yadm init'
alias dad='yadm add'
alias dcm='yadm commit -m'
alias dps='yadm push'
alias dpl='yadm pull'
alias dswt='yadm switch'
alias dmrg='yadm merge'
alias dstsh='yadm stash'
alias dply='yadm stash apply'
# Alias for discarding changes in the yadm repository
alias ydscrd='yadm checkout --'
alias dst='yadm status'
alias ddif='yadm diff'


#
## EXPORTS
#

# export PATH='":$PATH
export EDITOR='nvim'
export SUDO_EDITOR='vim'
export TERMINAL='alacritty'
export MANPAGER='nvim +Man!'

#set -gx PATH /opt/anaconda/bin/conda $PATH
# export MANWIDTH=999

# Anaconda init
#if not command -v conda >/dev/null 2>&1
#	echo "Conda command not found, trying to add it..."
#else
#	echo "Conda command found"
#end
