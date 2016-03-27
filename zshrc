# oh-my-zsh path
ZSH=$HOME/.oh-my-zsh
# theme
ZSH_THEME="kolo"
# activated plugins (other can be found in ~/.oh-my-zsh/custom/plugins/)
plugins=(git npm heroku node history-substring-search lol nyan sublime)
# no spelling correction
unsetopt correct_all

# load aliases
. ~/.aliases
# load exports
. ~/.exports

# This loads nvm
export NVM_DIR="/home/bigx/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

source $ZSH/oh-my-zsh.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
