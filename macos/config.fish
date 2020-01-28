#set -x FORTUNE_FILE ~/.fortune/anarchism
set fish_greeting
set_color brred
fortune startrek | fold -s
set_color normal
echo 'TRANS RIGHTS!' | cowsay -f signbunny | lolcat -F 1 -S 2
status --is-interactive; and source (rbenv init -|psub)
