#### Install dependencies

##### Mac
- Install [janus](https://github.com/carlhuda/janus)
- Install tmux `brew install tmux`

##### Linux
- Install [janus](https://github.com/carlhuda/janus)
- Install libs `sudo apt-get install tmux zsh libmysqlclient-dev mysql-server phantomjs`

#### Symlink files

```bash
cd
git clone https://github.com/balvig/.dotfiles.git
ln -sf .dotfiles/.vimrc.before .vimrc.before
ln -sf .dotfiles/.vimrc.after .vimrc.after
ln -sf .dotfiles/.janus .janus
ln -sf ~/.dotfiles/jellybeans+.vim ~/.vim/janus/vim/colors/sampler-pack/colors/jellybeans+.vim
ln -sf .dotfiles/.zshrc .zshrc
ln -sf .dotfiles/.tmux.conf .tmux.conf
ln -sf .dotfiles/.gitignore_global .gitignore_global
ln -sf .dotfiles/.gitconfig .gitconfig
```

#### Update submodules

```bash
cd ~/.dotfiles
git submodule init
git submodule update
```

#### Set up local gitconfig

```bash
vi ~/.gitconfig.local

[user]
  name = Your Name
  email = your@email.com
```
