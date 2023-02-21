# oh-my-zsh path
ZSH=$HOME/.oh-my-zsh
# theme
ZSH_THEME="kolo"
# activated plugins (other can be found in ~/.oh-my-zsh/custom/plugins/)
plugins=(
  git
  node
  npm
  github
  nvm
  npm
  zsh-syntax-highlighting
  zsh-autosuggestions
)
# no spelling correction
unsetopt correct_all

# load aliases
. ~/.aliases
# load exports
. ~/.exports
# load bash_profile
. ~/.bash_profile

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

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

eval "$(pyenv init -)"
eval "$(direnv hook zsh)"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
eval "$(rbenv init -)"
export GEM_HOME="$HOME/.gem"
export PATH="/opt/homebrew/opt/cocoapods/bin:$PATH"
