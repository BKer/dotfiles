#!/bin/zsh

# Directory of the script (root of repository)
BASEDIR=$(dirname $0)

# If not called from the repository root, cd to the root
cd $BASEDIR


### GIT
git=`which git 2> /dev/null`
gitoutput=`$git --version 2> /dev/null`
if [[ $gitoutput == *version* ]]; then
  echo "git found"
  echo "Getting submodules"
  git submodule update --init --recursive

  echo "symlinking"
  ln -s $BASEDIR/git/.gitconfig ~/
  ln -s $BASEDIR/git/.gitmessage.txt ~/
else
  echo "git is not found, but git is required for this set-up to function."
  exit 0
fi


### I3-WM
i3wm=`which i3 2> /dev/null`
i3output=`$i3wm -v 2> /dev/null`
if [[ $i3output == *version* ]]; then
  echo "i3 found, symlinking"
  ln -s $BASEDIR/.i3 ~/
else
  echo "i3 not found, skipping"
fi


### TMUX
tmux=`which tmux 2> /dev/null`
tmuxoutput=`$tmux -h 2> /dev/null`
if [[ $tmuxoutput == tmux* ]]; then
  echo "tmux found, symlinking"
  ln -s $BASEDIR/.tmux ~/
  ln -s $BASEDIR/.tmux.conf ~/
else
  echo "tmux not found, skipping"
fi



### VIFM
vifm=`which vifm 2> /dev/null`
vifmoutput=`$vifm -v 2> /dev/null`
if [[ $vifmoutput == *Version* ]]; then
  echo "vifm found, symlinking"
  ln -s $BASEDIR/.vifm ~/
else
  echo "vifm not found, skipping"
fi


### VIM
vim=`which vim 2> /dev/null`
vimoutput=`$vim --version 2> /dev/null`
if [[ $vimoutput == *IMproved* ]]; then
  echo "vim found"
  ln -s $BASEDIR/.vimrc ~/

  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
  vim +PluginInstall +qall
else
  echo "vim not found, skipping"
fi


### XRDB
xrdb=`which xrdb 2> /dev/null`
xrdboutput=`$xrdb -version 2> /dev/null`
if [[ $xrdboutput == xrdb* ]]; then
  echo "xrdb found, symlinking Xresources"
  ln -s $BASEDIR/.Xresources ~/
else
  echo "xrdb not found (Xresources)"
fi


### ZSH
zsh=`which zsh 2> /dev/null`
zshoutput=`$zsh --version 2> /dev/null`
if [[ $zshoutput == zsh* ]]; then
  echo "zsh found, symlinking"
  ln -s $BASEDIR/.zprezto ~/
  setopt EXTENDED_GLOB
  for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
else
  echo "zsh not found"
fi

