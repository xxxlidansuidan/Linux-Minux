cat /dev/urandom | lolcat

cat /dev/urandom | base64 |  lolcat

strings </dev/urandom | fmt -100 | lolcat -F .99

hexdump /dev/urandom | lolcat
