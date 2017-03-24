
set -x PATH $HOME/.nvm/versions/node/v7.7.1/bin $PATH

alias v '/usr/bin/nvim'
alias e '/usr/bin/emacs'

alias rm 'trash'
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


