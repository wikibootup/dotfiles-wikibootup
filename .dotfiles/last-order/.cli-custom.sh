alias sl='ls'


#http://www.humbug.in/2010/custom-key-bindings-keyboard-shortcuts-in-bash/
#If you wish to execute the command instead of just inserting it, 
#all you need to do is add \C-m at the end of the command. 
#\C-m aka Ctrl m is nothing but the equivalent of the Enter key. 
#Press the key combination in your terminal and you’ll see. The resulting command with \C-m included is:

bind '"\C-["':"\"cd ..\C-m\""
bind '"\C-]"':"\"cd -\C-m\""
# bind '"\ew"':"\"grep --exclude-dir wp-content -rnH is_singular *\C-m\""
