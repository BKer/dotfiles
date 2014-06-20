#!/bin/zsh

# Directory of the script (root of repository)
BASEDIR=$(dirname $0)

# If not called from the repository root, cd to the root
cd $BASEDIR

git submodule update --init --recursive

cd $BASEDIR/.zprezto
git submodule init
git submodule update

cd $BASEDIR

ln -s $BASEDIR/.i3 ~/
ln -s $BASEDIR/.tmux ~/
ln -s $BASEDIR/.tmux.conf ~/
ln -s $BASEDIR/.vifm ~/
ln -s $BASEDIR/.zprezto ~/
ln -s $BASEDIR/.Xresources ~/
ln -s $BASEDIR/.vimrc ~/
ln -s $BASEDIR/git/.gitconfig ~/
ln -s $BASEDIR/git/.gitmessage.txt ~/

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall
