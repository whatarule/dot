
alias la='ls -la'

# brew

# brew zoxide
eval "$(zoxide init zsh --hook prompt )"
alias cd="z"

# brew install starship
eval "$(starship init zsh)"
# brew install sheldon
eval "$(sheldon source)"

# brew install sk ripgrep fd bat
# brew install asdf zsh

alias k='kubectl'
alias v='nvim'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
