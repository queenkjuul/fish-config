function niceline
    printf %(tput cols)s | tr ' ' '-' | lolcat -S 40 -F 0.0575
end