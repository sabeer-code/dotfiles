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
cat <<'EOF' >> ~/.bashrc

# Create ~/bin folder if it does not exist and add to PATH
if [[ ! -d $HOME/bin ]]; then
    mkdir -p $HOME/bin
fi
export PATH="$HOME/bin:$PATH"

# Alias definitions.
if [[ -f $HOME/.bash_aliases ]]; then
    . $HOME/.bash_aliases
fi

# Prompt Definition
if [[ -f $HOME/.bash_prompt ]]; then
    . $HOME/.bash_prompt
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
cd ~
source ~/.bashrc
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```

### Some dependencies for the plugins on NeoVim:
- C compiler: `cc`, `gcc`, `clang`, `cl`, `zig`
- `npm`
- `go`
- `unzip`


References:
- [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
- [0 to LSP : Neovim RC From Scratch by ThePrimeagen](https://youtu.be/w7i4amO_zaE?feature=shared)

