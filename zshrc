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
#antigen bundle npm
antigen bundle osx
antigen bundle web-search
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# NVM bundle
export NVM_LAZY_LOAD=true
#antigen bundle lukechilds/zsh-nvm
#antigen bundle Sparragus/zsh-auto-nvm-use
# Setup zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load the theme.
#antigen theme robbyrussell
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship


# Tell Antigen that you're done.
antigen apply


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/pk0718/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/pk0718/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/pk0718/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/pk0718/google-cloud-sdk/completion.zsh.inc'; fi

# export GOOGLE_APPLICATION_CREDENTIALS=/Users/pk0718/provisioning-api/g5-dexcom-dev-us-10-fff73975989d.json
# export GOOGLE_APPLICATION_CREDENTIALS=/Users/pk0718/provisioning-api/provisioning-api/src/main/resources/dev-us-5g-plat-6.json
#export GOOGLE_APPLICATION_CREDENTIALS=/Users/pk0718/Downloads/dev-us-5g-cams-1-d7949cb485ce.json

alias chrome-no-sec='open -n -a /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security'
alias k='kubectl'

rtc-v-all() {
    gcloud beta runtime-config configs variables list --config-name=$1 $2
}


rtc-v() {
    gcloud beta runtime-config configs variables get-value $1 --config-name=$2
}

rtc-v-s() {
    cat $2 | gcloud beta runtime-config configs variables set $1 --config-name $3
}

rtc-v-s2() {
    gcloud beta runtime-config configs variables set $1 $2 --config-name $3
}

rtc-c-all() {
    gcloud beta runtime-config configs list
}

