if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting
oh-my-posh init fish --config ~/.poshthemes/ys.omp.json | source


alias ls="exa --icons -l --group-directories-first --no-permissions"
alias pomodoro="rusty-krab-manager"

# Created by `pipx` on 2023-03-15 11:52:05
set PATH $PATH /home/startup06/.local/bin

# Created by `pipx` on 2023-10-17 00:18:34
set PATH $PATH /home/areco/.local/bin
