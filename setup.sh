#!/usr/bin/env bash

echo "Symlinking config files..."
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/tmux.conf ~/.tmux.conf
mkdir -p ~/.config/fish
ln -s $PWD/config.fish ~/.config/fish/config.fish
mkdir -p ~/.config/fish/functions
ln -s $PWD/fish/functions/fish_ssh_agent.fish ~/.config/fish/functions/fish_ssh_agent.fish

echo "Creating directories for vim temp files..."
mkdir -p ~/.vim/files/backup
mkdir -p ~/.vim/files/swap
mkdir -p ~/.vim/files/undo
mkdir -p ~/.vim/files/info

echo "Use ~/.vimrc in neovim..."
mkdir -p ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" > ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim
echo "Done!"

echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done!"

echo "Installing base16-shell..."
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
echo "Done!"

echo "Installing tmux plugin manager..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Done!"

echo ""
echo "setup.sh complete!"
echo "Todo:"
echo "  Setup a nerd font"
echo "  Run base16-oceanicnext or whichever theme"
echo "  Press ctrl-A shift-I in tmux to install plugins"
echo "  Run :PlugInstall in neovim"
