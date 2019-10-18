
# sdkman
set -x PATH $HOME/.sdkman/candidates/kotlin/1.3.20/bin $PATH

# stack
set -x PATH $HOME/.local/bin $PATH

# node
set -x PATH $HOME/.nvm/versions/node/v7.7.1/bin $PATH

# golang
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

#set -x PKG_CONFIG_PATH /usr/lib/pkgconfig

alias v '/usr/bin/nvim'
alias e '/usr/bin/emacs'

alias p '/usr/bin/python3'

#alias rm 'trash'
alias gdrive gdrive-linux-x64

set -x FZF_DEFAULT_COMMAND 'find .'
set -U FZF_LEGACY_KEYBINDINGS 0

function cd
  builtin cd $argv
  ls
end

#function source
#  source HOME/.config/fish/config.fish
#end


