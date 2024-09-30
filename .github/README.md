# dotfiles
A repository for some of my configuration dotfiles.

### How to install onto a new system
```bash
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
echo ".cfg" >> .gitignore
git clone --bare https://github.com/sabeer-code/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```

### Additional files to source folders to add into PATH in ~/.bashrc
```bash
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
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
export PATH=$PATH:/opt/nvim-linux64/bin
```

### Tmux setup
1. Install Tmux as per [TmuxWiki](https://github.com/tmux/tmux/wiki)  
**NOTE:** This is needed as some Tmux configuration needs newer versions of Tmux


References:
- [Dotfiles: Best Way to Store in a Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles)
- [0 to LSP : Neovim RC From Scratch by ThePrimeagen](https://youtu.be/w7i4amO_zaE?feature=shared)
- [Github: lazy.nvim](https://github.com/folke/lazy.nvim)
- [Turn VIM into a full featured IDE with only one command](https://youtu.be/Mtgo-nP_r8Y?si=cTe321ewX2MuTUCq)
- [Tmux has forever changed the way I write code.](https://youtu.be/DzNmUNvnB04?si=yXmXHQic0amMzW9f)
- [The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)
- [Github: kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)
