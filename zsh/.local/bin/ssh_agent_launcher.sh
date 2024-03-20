#!/usr/bin/env bash

# Description
# This script aim to be run at the launch of zsh.
# It ask if the user wants to run ssh-agent and load ssh keys

# Ask the use if the agent needs to be launched
read -p "Lauch ssh-agent ? (y/n) : " response

# If not exit the script
if [[ "$response" != "y" ]];
then
  exit 0
fi

# If yes check if the agent is already running
echo "1️. Initialising new SSH agent..."
if ps -p $SSH_AGENT_PID > /dev/null
then
  echo "ssh-agent is already running"
else
  eval `ssh-agent -s`
fi


# Add here the ssh key to load
ssh-add ~/.ssh/id_ed25519
