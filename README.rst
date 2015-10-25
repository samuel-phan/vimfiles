Samuel's Vim configuration
==========================

Installation (**read-only**)::

    git clone https://github.com/samuel-phan/vimfiles.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ln -s .vim/.vimrc ~/.vimrc
    vim -u ~/.vim/.vimrc +BundleInstall +qall

Installation (**read-write**)::

    git clone git@github.com:samuel-phan/vimfiles.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ln -s .vim/.vimrc ~/.vimrc
    vim -u ~/.vim/.vimrc +BundleInstall +qall
