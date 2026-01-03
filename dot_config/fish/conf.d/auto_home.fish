function auto_home_redirect --on-event fish_prompt
    if test "$PWD" = "/var/home/$USER"
        cd $HOME
    end
end