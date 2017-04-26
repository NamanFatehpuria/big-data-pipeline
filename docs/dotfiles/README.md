Steps to step the machine:

- Follow github.com/mscoutermarsh/dotfiles

- Get all the dotfiles from repo 
	.bashrc 
	.bash_profile 
	.vimrc
	.vimrc.bundles
	.aliases

- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
- git clone https://github.com/powerline/fonts.git  ~/Documents/setup/fonts
- cd ~/Documents/setup/fonts && ./install.sh


- Download item2.com => unzip it => move to the applications

- vim => :PluginInstall

- xcode-select --install
- brew install macvim --override-system-vim
- brew install tmux
- brew install reattach-to-user-namespace


- Follow https://github.com/powerline/powerline
- pip install --user powerline-status
- pip install --user git+git://github.com/powerline/powerline 

# Might have to change location in ~/.vimrc
- set rtp+=/Users/nfatepu/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/

# Might have to change location in ~/.bashrc
if [ -f /Users/nfatepu/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /Users/nfatepu/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
fi

# Font that I use
- iterm2 > preferences > profiles > text > font > 12pt Sauce Code Powerline Bold