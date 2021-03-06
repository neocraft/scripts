#~/bin/bash
# Only use this is you want to replace your bashrc/profile, its easier to
# source the bashrc in the scripts dir.
CURRENTPATH=`pwd`
SYSTEMOS=$1
if [ "$1" == "-h" ] || [ "$1" == "help"]; then
    echo "Usage:"
    echo "  sh autoLink.sh <OS>"
    echo "    Accepted values: mac/win/linux"
    echo ""
    echo "  sh autoLink.sh -h"
    echo "  sh autolink.sh help"
    echo "    Bring up this help menu"
    exit
fi

if [ "$SYSTEMOS" == "mac" ]; then
    echo "You are running on OSX"
    if [ -f ~/.bash_profile ]; then
        mv ~/.bash_profile ~/.bash_profile.old
        echo "Moving .bash_profile to .bash_profile.old"
        echo "Linking .bash_profile"
        ln -s $CURRENTPATH/bashrc $HOME/.bash_profile
    fi
elif [ "$SYSTEMOS" == "win" ] || [ "$systemOs" == "linux" ]; then
    if [ -f ~/.bashrc ]; then
        mv ~/.bashrc ~/.bashrc.old
        echo "Moving .bashrc to .bashrc.old"
        echo "Linking bashrc"
        ln -s $CURRENTPATH/bashrc $HOME/.bashrc
    fi
else
    echo "No OS specified"
fi

if [ -f ~/.git-prompt.sh ]; then
    echo "Git prompt already present"
else
    echo "Linking git-prompt"
    ln -s $CURRENTPATH/.git-prompt.sh $HOME/.git-prompt.sh
fi

if [ -f ~/.git-completion.bash ]; then
    echo "git completion already installed"
else
    echo "Linking git completion"
    ln -s $CURRENTPATH/.git-completion.bash $HOME/.git-completion.bash
fi
