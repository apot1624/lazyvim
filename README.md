# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

Install the [LazyVim Starter](https://github.com/LazyVim/starter)

- Make a backup of your current Neovim files:
    
    ```bash
    # required
    mv ~/.config/lazyvim{,.bak}

    # optional but recommended
    mv ~/.local/share/lazyvim{,.bak}
    mv ~/.local/state/lazyvim{,.bak}
    mv ~/.cache/lazyvim{,.bak}
    ```
    
- Clone the starter
    
    ```bash
    git clone https://github.com/apot1624/lazyvim ~/.config/lazyvim
    ```

    
- Start Neovim!
    
    ```bash
    NVIM_APPNAME="lazyvim" nvim
    ```
    
----------------------------------------------------------------------

- Manual packaging of LazyVim configuration and plugins

    ```bash
    tar czvf config_lazyvim.tgz -C ~/.local/config lazyvim
    tar czvf share_lazyvim.tgz -C ~/.local/share lazyvim
    ```

- Manual unpackaging of LazyVim configuration and plugins

    ```bash
    tar zxvf config_lazyvim.tgz -C ~/.local/config
    tar zxvf share_lazyvim.tgz -C ~/.local/share
    ```
