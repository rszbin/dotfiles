# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# alias:wilson
alias python='python3'
alias restart='shutdown -r now'
alias poweroff='shutdown now'
alias tree2='tree -a -L 2'
alias ltree='tree -a -L 3 | less'

# Ubuntu
alias upgrade='sudo apt update; sudo apt upgrade -y'

# Functions
yt-dlp-audio() {
  echo Downloading $1
  yt-dlp $1 --embed-thumbnail -f bestaudio -x --audio-format mp3 --audio-quality 320k
}

yt-dlp-video() {
  yt-dlp --embed-thumbnail -f "bestvideo[height=1080]+bestaudio/best" -o "%(title)s.%(ext)s" --merge-output-format mp4 $1
}

showip() {
    ip -o -4 addr show | awk '{print $2, $4}'
}

# snap list <package-name>
# dpkg -l | grep <package-name>
# flatpak list | grep <package-name>
