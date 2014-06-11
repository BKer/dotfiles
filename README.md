<!---
  Updated: Wed 11 Jun 2014 22:09:11 CEST by bart@burgberg
-->
My dotfiles
===========
A repository containing my dotfiles (.files).

i3-wm
-----
It is sufficient to symlink the i3wm folder to `~/.i3/`. However I would suggest
you checkout at least the start-up section and the bindings.

The lockScreen.sh script contains the following code:

```Bash
#!/bin/sh
scrot /tmp/screen_locked.png
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked_blur.png
i3lock -i /tmp/screen_locked_blur.png
```

Unfortunately I don't remember where I got it from, so I'm sorry for not giving
credit.

.gitconfig
----------
My gitconfig file calls a script `~/Scripts/git-omgwtfbbq`, you will find the
content of this script below:

```Bash
#!/bin/sh

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

Don't remember where I found this script, so sorry for not giving credit.

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

.vifm
-----
My config file for vifm. vifm is a vi style file manager. In my config I did set
some programs to use when opening certain files.

.vimrc
------
Before using the .vimrc file you will have to install Vundle. You can install
Vundle as follows:

`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle`

After installing Vundle you can run:

`vim +PluginInstall +qall`

Two plug-ins need compiling, so head over to `~/.vim/bundle/vimproc.vim` and run
`make`. Afterwards go to`~/.vim/bundle/YouCompleteMe` and run `./install.sh`. If
you are a C or C++ programmer you can run the install script with some options,
but check the YMC documentation for those.

.Xresources
-----------
My Xresources file, contains things like setting the transparency of my URxvt
terminal.

.zshrc
----------
Ditched the zsh config in favour of the Prezto set-up. You can find my fork on
GitHub as well. In my fork I keep my own set-up. Also I've still got grml
installed.

<!---  vim: set ft=markdown ts=2 sw=2 tw=80 foldmethod=syntax : -->
