# ~/.zshrc
eval "$(starship init zsh)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export M2_HOME=${HOME}/DEV/apache-maven-3.8.1
export PATH=$PATH:$M2_HOME/bin
export JAVA_HOME=${HOME}/DEV/jdk-16.jdk/Contents/Home

cd ~/DEV/

#aliases
alias s="git status"
alias pull="git pull"
alias .="code ."
alias ..="open ."
alias a="git add ."
alias p="git push"
alias checkout="git checkout"
alias new="git checkout -b"

c() {
    git commit -m "$1"
}

# $1 Commit message, $2 push args
g() {
    TICKET=$(git branch --show-current)
    git status && git commit -am "$TICKET - $1" && git push $2
}
