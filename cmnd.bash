# Using GNU date you can convert a Unix epoch time back into a human readable date by prefixing it with @ 

date -d @1539217802 
date -d @(Unix epoch) 

# And for checking (Unix epoch) : it wil show the Unix Time :) which one have use here [date -d @(?)] 
date +%s.%N

# You can set this in your bash shell config to flip a table whenever a command fails with a non-zero exit status 
(1)
PROMPT_COMMAND='[ $? -eq 0 ] || printf "(╯°□°）╯︵ ┻━┻\n"'    //yeah, when any error occur with command, you can see it on our terminal :) ]

# which less-intrusively changes my username to red on error in Terminal 
export PS1='\[$([ $? == 0 ] && tput setaf 4 || tput setaf 1)\]\u\[$(tput setaf 0; tput bold)\]@\[$(tput sgr0; tput setaf 4)\]\h\[$(tput setaf 0)\]:\[$(tput setaf 2)\]\w\[$(tput sgr0)\]\$ '

# For ZSH :
precmd() { [ $? -eq 0 ] || printf "(╯°□°）╯︵ ┻━┻\n" } # on zsh ;)

# sox player-Play the bass line from the theme to Peter Gunn using sox play. Also known from Blues Brothers, Spy Hunter, etc ***
val play -n synth .25 pl\ {F2,F2,G2,F2,G#2,F2,Bb2,A2} delay $( seq 0 .25 1.75 ) repeat 100 remix - 

# For maps in your terminal from OpenStreetMap. Yes really.
telnet mapscii.me //for zoom -Use A and Z/Y or your mouse wheel :)

#can use figlet for printing something on terminal like :
$figlet hello world! (Or) $figlet hello lidan | cowsay -n | lolcat -F 0.5

# Jingle Bells
curl climagic\.org/txt/jb.txt|while read -r c n l;do printf "\e[1;${c}m%${COLUMNS}s\e[0m\n" " ";play -q -n synth pl $n trim 0 $l;done

# Look at the full year calendar for 2013 and 2014 side by side. (Requires term width > 135).
paste <(cal 2013) <(cal 2014) //put any year
# same for current and next year:
paste <(cal $(date +%Y)) <(cal $(($(date +%Y) + 1)))

# How to drive someone completely nuts at Linux shell prompt (add to their ~/.bashrc):
alias ls='ls -l | lolcat -a'
 $ ls
