# NVIM Configuration

## Configuration Structure

```
.
├── README.md               // This README
├── init.lua                // Entry point for NeoVim
└── lua                     // Modules in here can be loaded
    ├── autocommands.lua    // Autocommands
    ├── keymaps.lua         // Custom Keymaps (excl. plugin keymaps)
    ├── plugins             // Plugin Configuration
    │   ├── Comment.lua
    │   ├── ...
    │   └── which-key.lua
    └── settings.lua        // NeoVim Options
```
