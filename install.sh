#!/bin/bash

# Exit on error
set -e

echo "Installing dotfiles..."

# Create necessary directories
mkdir -p ~/.config/cursor/rules
mkdir -p ~/.config/git
mkdir -p ~/.config/zsh

# Create symlinks for Cursor rules
ln -sf "$(pwd)/.config/cursor/rules/markdown_tracking.md" ~/.config/cursor/rules/
ln -sf "$(pwd)/.config/cursor/rules/voice_announcements.md" ~/.config/cursor/rules/

# Create symlinks for Git configuration
ln -sf "$(pwd)/.config/git/config" ~/.config/git/config

# Create symlinks for Zsh configuration
ln -sf "$(pwd)/.config/zsh/.zshrc" ~/.zshrc

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Zsh plugins
echo "Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "✅ Dotfiles installed successfully!"
echo "Please restart your terminal or run 'source ~/.zshrc' to apply changes." 