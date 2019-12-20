Want to automatically cd into directories on Linux/macOS/BSD/Unix when using bash/zsh? Try

shopt -s autocd # bash
setopt autocd # zsh
/etc/
pwd

Using the autocd option, you can simply type the name of a directory, and 
it will become the current directory by passing to the cd.
