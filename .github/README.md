# dotfiles
A repository for some of my configuration dotfiles.

How to install onto a new system:
```bash
echo alias config=\'/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=\$HOME\' > ~/.bashrc
source ~/.bashrc
echo ".cfg" >> .gitignore
git clone --bare https://github.com/SabeerBakir/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```

nvim setup
```bash
cd ~/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
ln -s nvim.appimage ./nvim
```

References:
- https://www.atlassian.com/git/tutorials/dotfiles
