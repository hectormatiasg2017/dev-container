#!/bin/bash

# Configure Git user
git config --global user.name "$GIT_USER_NAME"
git config --global user.email "$GIT_USER_EMAIL"

# cd /workspaces/${localWorkspaceFolderBasename} && ls -la
source $HOME/.profile  # Ensure PATH updates are applied

# poetry install

# ls -la /home/node
# cat /home/node/.zsh_history
# Ensure zsh history file exists and has correct permissions
# touch /home/node/.zsh_history
# chmod 600 /home/node/.zsh_history
