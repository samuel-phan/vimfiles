Samuel's Vim configuration
==========================

Installation (for me, with write access)::

    git clone git@github.com:samuel-phan/vimfiles.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim -u ~/.vim/vimrc +BundleInstall +qall
    ln -s .vim/vimrc ~/.vimrc

Installation (for you, in read-only)::

    git clone https://github.com/samuel-phan/vimfiles.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim -u .vim/vimrc +BundleInstall +qall
    ln -s .vim/vimrc ~/.vimrc

