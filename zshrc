# oh-my-zsh path
ZSH=$HOME/.oh-my-zsh
# theme
ZSH_THEME="kolo"
# activated plugins (other can be found in ~/.oh-my-zsh/custom/plugins/)
plugins=(
  git
  zsh-autosuggestions
  node
  npm
  github
  nvm
  npm
)
# no spelling correction
unsetopt correct_all

# load aliases
. ~/.aliases
# load exports
. ~/.exports

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

source $ZSH/oh-my-zsh.sh
