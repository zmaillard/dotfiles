# Dotfiles

## WSL Initial Bootstrap

**Install User and Base Utilities**

```bash
# Install adduser utility, and sudo
apt-get update && apt-get install sudo adduser software-properties-common curl neovim

# Create user and add to sudo group
adduser zmaillard
usermod -a -G sudo zmaillard

# Edit 
echo -e "[user]\ndefault = zmaillard" > /etc/wsl.conf

# Remove Docker Indicators
rm /.dockerenv
```

**WSL From Microsoft Store**

```bash
# Install NeoVim
sudo snap install nvim
```

## Log Out of WSL And Re-Open

```cmd
wsl -t <distroname>
wsl -d <distroname>
```

## Install Chezmoi
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply zmaillardhw
```

## MacOS Specific
- [Disable Reading DS_Store on Network Drives](https://support.apple.com/en-us/102064)
`defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE`
