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

### NeoVim setup

Neovim will be installed as part of `mise install`. Alternatively install manually using:

```bash
dir="$(mktemp -d)"
pushd .
cd "${dir}"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
export PATH=$PATH:/opt/nvim-linux-x86_64/bin
popd
rm -vrf "${dir}"
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
