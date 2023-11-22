# Dotfiles

## WSL Initial Bootstrap

**Install User and Base Utilities**

```bash
# Install adduser utility, and sudo
apt-get update && apt-get install sudo adduser

# Create user and add to sudo group
adduser zmaillard
usermod -a -G sudo zmaillard

# Edit 
echo "[user]\ndefault = zmaillard" > /etc/wsl.conf

# Remove Docker Indicators
rm /.dockerenv
```

## Log Out of WSL And Re-Open

## Install Chezmoi
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply zmaillardhw
```
