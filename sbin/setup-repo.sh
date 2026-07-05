#!/bin/bash
# setup-repo.sh
# Safely sets up the grok-book repository (safe to run multiple times)

set -e

echo "=== Setting up grok-book repository ==="

# Check if we're in a git repository
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Error: Not in a git repository."
    exit 1
fi

# Set the correct remote
git remote set-url origin https://github.com/2Groks1Lab/grok-book.git

# Make sure we're on main branch
git branch -M main

# Fetch latest changes
git fetch origin

# Set upstream tracking ONLY if not already set
if ! git rev-parse --abbrev-ref --symbolic-full-name @{u} &> /dev/null; then
    echo "Setting upstream tracking to origin/main..."
    git branch --set-upstream-to=origin/main main
else
    echo "Upstream tracking already configured."
fi

echo "✅ Repository setup completed successfully!"
echo "Remote: $(git remote -v | head -n1)"
echo "Branch: $(git branch --show-current)"