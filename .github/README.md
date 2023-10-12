# dotfiles
A repository for some of my configuration dotfiles.

### How to install onto a new system
```bash
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
echo ".cfg" >> .gitignore
git clone --bare https://github.com/SabeerBakir/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```

### Additional files to source folders to add into PATH in ~/.bashrc
```
cat <<EOF >> ~/.bashrc

# Create ~/bin folder if it does not exist and add to PATH
if [[ ! -d ~/bin ]]; then
    mkdir -p $HOME/bin
fi
export PATH="$HOME/bin:$PATH"

# Alias definitions.
if [[ -f ~/.bash_aliases ]]; then
    . ~/.bash_aliases
fi

# Prompt Definition
if [[ -f ~/.bash_prompt ]]; then
    . ~/.bash_prompt
fi

EOF
source ~/.bashrc
```

### NeoVim setup
```bash
cd ~/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
ln -s nvim.appimage ./nvim
```



References:
- https://www.atlassian.com/git/tutorials/dotfiles
