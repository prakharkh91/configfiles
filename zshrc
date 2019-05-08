# Customize to your needs...

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

#source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
#export NVM_DIR="$(realpath $HOME/.nvm)"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# NVM bundle
#export NVM_LAZY_LOAD=true
#antigen bundle lukechilds/zsh-nvm
#antigen bundle Sparragus/zsh-auto-nvm-use
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Setup zsh-autosuggestions
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
#antigen theme robbyrussell
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship


# Tell Antigen that you're done.
antigen apply
