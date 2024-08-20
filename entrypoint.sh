#!/bin/bash

# Ensure .zsh_history file exists within the mounted directory
if [ -d /home/node/zsh_history_dir ]; then
  if [ ! -f /home/node/zsh_history_dir/.zsh_history ]; then
    touch /home/node/zsh_history_dir/.zsh_history
  fi
  ln -sf /home/node/zsh_history_dir/.zsh_history /home/node/.zsh_history
fi

# Set permissions
chown node:node /home/node/zsh_history_dir/.zsh_history
chmod 600 /home/node/zsh_history_dir/.zsh_history

# Execute the container's main process
exec "$@"
