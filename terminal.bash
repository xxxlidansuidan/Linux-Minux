The Best Linux Blog In the Unixverse
Useless yet funny stuff. Embrace your inner child. Bring back Basic programming days with bash ;) 
* FYI, might eat up your CPU. So do not run in prod :P

$ P=(' ' █ ░ ▒ ▓)
$ while :;do printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}";done

Or,# added nice for slow....

$ P=(' ' █ ░ ▒ ▓)
$ while :;do nice printf "\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}";done

***This is the same, but with color, but seems to slow it down a bit...

P=(' ' █ ░ ▒ ▓)
while :;do printf "\e[9$(( ( RANDOM % 7 )  + 1 ))m\e[$[RANDOM%LINES+1];$[RANDOM%COLUMNS+1]f${P[$RANDOM%5]}";done

it works with zsh: 

#!/bin/zsh
P=(' ' █ ░ ▒ ▓)
while :;do
printf "\e[9$(( ( RANDOM % 7 )  + 1 ))m\e[$[RANDOM%$LINES+1];$[RANDOM%$COLUMNS+1]f${P[$RANDOM%5]}" 
done
#Terminal will be colored, you can chage the color code
printf "%b" "\033]11;#ff0000\007"
