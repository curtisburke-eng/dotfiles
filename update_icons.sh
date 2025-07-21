#!/bin/bash

# Define paths to desktop files
filePaths=(
  "/usr/share/applications/pop-cosmic-applications.desktop"
  "/usr/share/applications/wavebox.desktop"
  "/usr/share/applications/code.desktop"
  "/usr/share/applications/obsidian.desktop"
  "/usr/share/applications/terminator.desktop"
)

newIconPaths=(
  "/home/cburke/Vault/3-RESOURCES/dotfiles/app-icons/home.png"
  "/home/cburke/Vault/3-RESOURCES/dotfiles/app-icons/web.png"
  "/home/cburke/Vault/3-RESOURCES/dotfiles/app-icons/tech.png"
  "/home/cburke/Vault/3-RESOURCES/dotfiles/app-icons/bos.png"
  "/home/cburke/Vault/3-RESOURCES/dotfiles/app-icons/terminal.png"
  
)

# Check that both arrays are the same length
if [[ ${#filePaths[@]} -ne ${#newIconPaths[@]} ]]; then
  echo "Error: filePaths and newIconPaths arrays must have the same length"
  exit 1
fi

# Loop through the arrays
for i in "${!filePaths[@]}"; do
  file="${filePaths[$i]}"
  icon="${newIconPaths[$i]}"

  if [[ ! -f "$file" ]]; then
    echo "Warning: File not found: $file"
    continue
  fi

  echo "Updating Icon in $file to $icon"
  sed -i "s|^Icon=.*|Icon=$icon|" "$file"
done
