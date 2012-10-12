#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

if (( ! $+commands[xcape] )); then
  # convert caps-lock into Control
  #xmodmap -e 'remove Lock = Caps_Lock'
  #xmodmap -e 'keysym Caps_Lock = Control_L'
  #xmodmap -e 'add Control = Control_L'

  # use the right Windows key as Caps-Lock
  #xmodmap -e 'keysym Super_R = Caps_Lock'
  #xmodmap -e 'add Lock = Caps_Lock'
  #xmodmap ~/.xmodmaprc
fi
