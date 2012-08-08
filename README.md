Install [janus](https://github.com/carlhuda/janus)

Install [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh)

Install [iTerm2](http://www.iterm2.com)

Install tmux

    brew install tmux

Then:

    cd ~
    git clone git@github.com:balvig/.dotfiles.git
    ln -s .dotfiles/.vimrc.after .vimrc.after
    ln -s .dotfiles/.janus .janus
    ln -s ~/.dotfiles/jellybeans+.vim ~/.vim/janus/vim/colors/sampler-pack/colors/jellybeans+.vim
    ln -s .dotfiles/.zshrc .zshrc
    ln -s .dotfiles/.tmux.conf .tmux.conf
    ln -s .dotfiles/.gitignore_global .gitignore_global
    git config --global core.excludesfile ~/.gitignore_global
    cd .dotfiles
    git submodule init
    git submodule update