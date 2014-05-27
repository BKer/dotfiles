<!---  Updated: Tue 27 May 2014 09:23:07 CEST by bart@burgberg
My dotfiles
===========
A repository containing my dotfiles (.files).

.gitconfig
----------
My gitconfig file calls a script `~/Scripts/git-omgwtfbbq`, you will find the
content of this script below:

```Bash
#!/bin/bash

# Get confirmation from user
read -p "This will erase any work done and reset to HEAD. Continue? [yN] " -n1
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
exit 1
fi

echo ''
# Reset everything
git clean -f && (git rebase --abort || git reset --hard)
```

Of course change name and e-mail when you copy-paste the config file.

.gitmessage.txt
---------------
Just a commit template.

.tmux.conf
----------
My configuration makes use of PowerLine. I've got the PowerLine repository
checked out in ~/.tmux/powerline.
You may need the Powerline patched fonts as well. You can find about them in the
PowerLine repository.

.vimrc
------
Before using the .vimrc file you will have to install Vundle. You can install
Vundle as follows:

`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle`

After installing Vundle you can run:

`vim +PluginInstall +qall`

<!---  vim: set ft=markdown ts=2 sw=2 tw=80 foldmethod=syntax : -->
