if type -q exa
    alias ls "exa -a -G --icons -s type"
    alias ll "exa -l -g --icons -s type"
    alias la "ll -a -s type"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
