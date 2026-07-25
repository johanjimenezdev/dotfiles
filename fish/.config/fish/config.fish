set fish_greeting ""

# -- Terminal colors -----------------------------------------
set -gx TERM xterm-256color

# -- Aliases -------------------------------------------------
alias ll "eza -l -g --icons"
alias lla "ll -a"
alias g git
alias lg lazygit
alias c claude
alias claude-yolo "claude --dangerously-skip-permissions"
alias vim nvim
alias ff fastfetch

# -- Editor --------------------------------------------------
set -gx EDITOR nvim

# -- Paths ---------------------------------------------------
export PATH="$HOME/.local/bin:$PATH"

set -gx PNPM_HOME "/home/johan/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
    set -gx PATH "$PNPM_HOME/bin" $PATH
end

# -- Zoxide --------------------------------------------------
zoxide init fish | source

# -- Starship ------------------------------------------------
# set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
# starship init fish | source
