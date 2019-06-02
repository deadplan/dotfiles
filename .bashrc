#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

if [[ "$(tty)" == "/dev/tty1" ]]
then
	exec startx
fi


#Aliases
alias ls='ls -a --color=auto'
alias cl='clear'
alias i3conf='sudo nano ~/.config/i3/config'
alias bashrc='sudo nano ~/.bashrc'
alias xdef='sudo nano ~/.Xdefaults'
alias pacconf='sudo nano /etc/pacman.conf'
alias blocksconf='sudo nano /etc/i3blocks.conf'
alias dunstrc='sudo nano ~/.config/dunst/dunstrc'
alias thegoyimknow='shutdown -h now'

#Prompt
PS1='[\u@\h \W]\$ '

