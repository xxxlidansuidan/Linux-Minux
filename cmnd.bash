**** Using GNU date you can convert a Unix epoch time back into a human readable date by prefixing it with @ ****

date -d @1539217802 
date -d @(Unix epoch) 

**** And for checking (Unix epoch) : it wil show the Unix Time :) which one have use here [date -d @(?)] ****
date +%s.%N

**** You can set this in your bash shell config to flip a table whenever a command fails with a non-zero exit status ****
(1)
PROMPT_COMMAND='[ $? -eq 0 ] || printf "(╯°□°）╯︵ ┻━┻\n"' 

[```yeah, when any error occur with command, you can see it on our terminal :) ]

**** which less-intrusively changes my username to red on error in Terminal ****
export PS1='\[$([ $? == 0 ] && tput setaf 4 || tput setaf 1)\]\u\[$(tput setaf 0; tput bold)\]@\[$(tput sgr0; tput setaf 4)\]\h\[$(tput setaf 0)\]:\[$(tput setaf 2)\]\w\[$(tput sgr0)\]\$ '
