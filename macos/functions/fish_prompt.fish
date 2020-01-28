function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    # User
    set_color brred
    echo -n (whoami)
    set_color brwhite

    echo -n '@'

    # Host
    set_color brblue
    echo -n (hostname)
    set_color brwhite

    echo -n ':'

    # PWD
    set_color magenta
    echo -n (prompt_pwd)
    set_color normal

    __terlar_git_prompt
    __fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end

    echo -n (set_color 55cdfc)'➤'(set_color f7a8b8)'➤'(set_color brwhite)'➤'(set_color f7a8b8)'➤'(set_color 55cdfc)'➤ '
    set_color normal
end
