#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

clear
neofetch

if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi
