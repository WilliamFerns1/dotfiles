if status is-interactive
    # Commands to run in interactive sessions can go here
    alias n 'nvim'
    alias lvim "/home/adonis/.local/bin/lvim"
    set -U fish_mode_cursor block

    # Add Homebrew to PATH
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # > /dev/null 2>&1;
 end

function g
    switch $argv[1]
        case "st"
            git status
            return
        case "czc"
            git cz commit
            return
        case "p"
            git push
            return
        case "*"
            git $argv
            return
    end
end


set fish_greeting

# pnpm
set -gx PNPM_HOME "/home/adonis/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
