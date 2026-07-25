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

# -- Path ----------------------------------------------------
export PATH="$HOME/.local/bin:$PATH"

# -- Zoxide --------------------------------------------------
zoxide init fish | source

# -- Starship ------------------------------------------------
# set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
# starship init fish | source
