set -x FORTUNE_FILE ~/.fortune/anarchism
set fish_greeting
set_color brred
fortune | fold -s
set_color normal
echo 'TRANS RIGHTS!' | cowsay -f signbunny | lolcat -F 4
