function tip
  printf "server tip o the day"%(math (tput cols) - 20)s\n | tr ' ' - | lolcat -S 40 -F 0.0575
  set_color -i brred
  fortune -s -e debian-hints computers debian drugs linux linuxcookie bofh-excuses
  set_color normal
  niceline
end