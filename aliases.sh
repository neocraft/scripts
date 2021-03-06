################################################################################
# Aliases in the scripts folder
################################################################################
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -GFh'
alias ll='ls -lhA'
alias lsl='ls -lhFA | less'
alias cd..='cd ..'
alias ..='cd ..'
alias please='sudo '
alias repache='apache2ctl restart'
alias rebash='. $BASHPATH'
alias vibash='vim $BASHPATH'
alias vivim='vim ~/.vimrc'
alias pull='git pull'
alias addall='git add .'
alias commit='git commit -m'
alias status='git status'
alias branches='git branch -va'
alias vitig='vim ~/.tigrc'
alias crap='$(thefuck $(fc -ln -1))' # A bash autocorrect utility, i didn't name it
alias manup="man $(fc -ln -1 | cut -d' ' -f2)" #run the man of the previous command
alias maven='mvn clean compile assembly:single'
alias sspr='mvn clean install -pl sspr -am'
alias jarup='cd target && scp -rpC IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar root@10.204.130.109:/srv/ftp/auto/auto-sspr-4.0.0.jar'
alias jarx='cd target && java -jar IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar -x'
alias jaru='jarx && java -jar IAAMAuto-1.0-SNAPSHOT-jar-with-dependencies.jar -u'
