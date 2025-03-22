#!/bin/bash

# Exit on error
set -e

echo "Installing dotfiles..."

# Create necessary directories
mkdir -p ~/.cursor/rules

# Create symlinks
ln -sf "$(pwd)/.cursor/rules/markdown_tracking.md" ~/.cursor/rules/
ln -sf "$(pwd)/.cursor/rules/voice_announcements.md" ~/.cursor/rules/

echo "✅ Dotfiles installed successfully!"
echo "Please restart Cursor IDE for the changes to take effect." 