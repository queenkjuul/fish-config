function niceline
    printf %(tput cols)s\n | tr ' ' '-' | lolcat -S 40 -F 0.0575
end