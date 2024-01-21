#! /bin/bash
sudo apt-get update
echo $HOME && cd $HOME

if command -v nvim >/dev/null 2>&1; then 
    echo 'nvim exists' 
else 
    echo 'nvim not exist, start build' 

    sudo apt-get install ninja-build gettext cmake unzip curl
    sodu rm -rf $HOME/neovim && git clone https://github.com/neovim/neovim $HOME/neovim
    cd $HOME/neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    sudo rm -rf $HOME/.config/nvim && git clone https://github.com/xieping5555/neovim-config.git $HOME/.config/nvim
    cd ~
fi

if comment -v go >/dev/null 2>&1; then
    echo "go exists"
else
    echo "go not exist, start install"

    wget https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz     
    mkdir $HOME/go1.19.5 && tar -zxvf go1.19.5.linux-amd64.tar.gz -C $HOME/go1.19.5
fi

if comment -v tmux >/dev/null 2>&1; then
    echo "tmux exists"
else
    echo "tmux not exists, start install"

    sudo apt-get install tmux
fi

if commen - zsh >/dev/null 2>&1; then
    echo "zsh not exists"
else
    echo "zsh not exists, start install"

    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if comment -v fasd >/dev/null 2>&1; then
    echo "fasd exists"
else 
    echo "fasd not exists, start install"

    sudo apt-get install fasd
fi

if comment -v mcfly >/dev/null 2>&1; then
    echo "fasd exists"
else 
    echo "fasd not exists, start install"

    wget https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh
    sudo sh install.sh -- --git cantino/mcfly
fi

echo "create dotfile symbol link"
cd $HOME/dotfile
ln -s .tmux.conf $HOME/.tmux.conf
ln -s .zshrc $HOME/.zshrc
ln -s .alacritty.yml $HOME/.alacritty.yml

source $HOME/.zshrc
