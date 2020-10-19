function fish_greeting
    if command -sq pfetch
        # See https://github.com/dylanaraps/pfetch#configuration
        PF_INFO="ascii os host kernel uptime memory shell palette" pfetch
    end
end
