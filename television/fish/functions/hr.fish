function hr
  if test -z "$argv[1]"
    set char '-'
  else 
    set char "$argv[1]"
  end
  printf %(tput cols)s | tr ' ' "$char"
end