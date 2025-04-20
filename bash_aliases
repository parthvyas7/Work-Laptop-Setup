alias c="clear"
alias q="exit"
alias ..="cd .."
alias upd="sudo apt update -y && sudo apt upgrade -y"
alias cln="sudo apt autoclean -y && sudo apt autoremove -y && sudo apt autopurge -y"
alias b="upower -i $(upower -e | grep BAT) | grep -E "percentage" | sed 's/ *percentage: *//'"
alias cht="cht.sh"
alias t="date +%H:%M"
alias v="vim" 
alias py="python3" 

# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -x "$(command -v lsd)" ]; then
    alias ls="lsd"
    alias lt="lsd --tree --depth 2"
    alias l="lsd --long --almost-all"
    alias la='ls -a'
    alias lla='ls -la'
fi
