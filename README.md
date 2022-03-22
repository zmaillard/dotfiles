Pre-Requisites
- Chezmoi (`sh -c "$(curl -fsLS chezmoi.io/get)"`)
- [1Password CLI](https://support.1password.com/command-line-getting-started/)
  - LogIn 1Password CLI (op signin --help)
  - curl -Lo op_linux_amd64_v1.12.4.zip https://cache.agilebits.com/dist/1P/op/pkg/v1.12.4/op_
linux_amd64_v1.12.4.zip

op signin my.1password.com zmaillard@protonmail.com

apt-get unzip zsh neovim tmux zoxide direnv build-essential libssl-dev automake autoconf libncurses5-dev libreadline-dev zlib1g-dev thefuck python3-pip jq

Install Shell Tools
- Nvim
- Starship (https://towardsdatascience.com/the-ultimate-guide-to-your-terminal-makeover-e11f9b87ac99#4b05) (`curl -sS https://starship.rs/install.sh | sh`)
- VMPlug (`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`)
- Tmux
- Asdf (`git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0`)
- Zoxide
- AZ Cli (`curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash`)
- GitHub CLI
- Oh My ZSH `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

Terraform
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
```

Ubuntu

```bash
asdf plugin add nodejs
asdf plugin add yarn
asdf plugin add elixir
asdf plugin add erlang
asdf plugin add ruby
```

- The Fuck
- DirEnv
- [GitHub CLI](https://cli.github.com)

Install Chezmoi
chezmoi init git@github.com:zmaillard/dotfiles.git

Create Chezmoi Mapping File
~/.config/chezmoi/chezmoi.toml


Install [vim plug](https://github.com/junegunn/vim-plug)
Install Tmux

