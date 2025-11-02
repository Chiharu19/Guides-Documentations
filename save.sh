#!/bin/bash

# Ask for a commit message if not passed as argument
if [ -z "$1" ]; then
  read -p "Commit message: " msg
else
  msg=$1
fi

# Run the git commands
git add .
git commit -m "$msg"
git push

echo "✅ Changes pushed successfully!"

