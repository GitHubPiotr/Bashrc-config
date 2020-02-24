# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
export PS1=" \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;141m\]\d\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;135m\]\A\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;35m\][\[$(tput sgr0)\]\[\033[38;5;42m\]\u\[$(tput sgr0)\]\[\033[38;5;35m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;228m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;227m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;253m\]\[\033[48;5;99m\]->\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\] \[$(tput sgr0)\]"


alias ls='ls --color=auto'

# MY ALIAS
#
# shortcuts
alias c='clear'
alias q='exit'
alias dc='cd ..'
# ls 
alias lsls='ls -ahlF --color=auto'
alias lsa='ls -a --color=auto'

### COMMANDS
#
# update system
alias update-system='sudo xbps-install -Syu'
# disable/enable system beep sounds
alias system-sounds-disable='gsettings set org.gnome.desktop.sound event-sounds false'
alias system-sounds-enable='gsettings set org.gnome.desktop.sound event-sounds true'
# youtube-dl
alias yt-download-playlist='youtube-dl -f bestaudio --audio-quality 0 --audio-format mp3 -i -x --extract-audio -o "%(playlist_index)02d - %(title)s.%(ext)s"'

### PACKAGES
#
# base apps
alias install-base-apps='sudo xbps-install -Sy xorg xinit NetworkManager bash-completion nano youtube-dl google-fonts-ttf htop'
# steam libs
alias install-steam-libs='sudo xbps-install -Sy void-repo-multilib void-repo-multilib-nonfree libpulseaudio-32bit libtxc_dxtn-32bit fontconfig-32bit libavcodec-32bit libavformat-32bit libavresample-32bit libavutil-32bit libgcc-32bit libstdc++-32bit libglvnd-32bit'
# intel libs
alias install-intel-libs='sudo xbps-install -Sy libGL-32bit mesa-intel-dri-32bit'
# amd libs
alias install-amd-libs='sudo xbps-install -Sy libGL-32bit mesa-ati-dri-32bit'
# install flatpak libs
alias install-flatpak-libs='sudo xbps-install -Sy xdg-desktop-portal xdg-desktop-portal-gtk xdg-user-dirs xdg-user-dirs-gtk xdg-utils; flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo; echo ""; echo "::INFO:: To install app: flatpak install <app_name>";'
# texlive packages
alias install-texlive-packages='source /etc/profile; sudo tlmgr install latexmk; sudo tlmgr install polski'



