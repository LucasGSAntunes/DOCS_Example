#!/bin/bash
set -e

# Set up Python environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install mkdocs mkdocs-material

# Build MkDocs site
mkdocs build --strict

# Deploy to GitHub Pages
git config --global user.name "Your GitHub Username"
git config --global user.email "Your GitHub Email"
git remote set-url origin https://github.com/${GITHUB_REPOSITORY}.git
git checkout -B $1
git add -A
git commit -m "Deploy MkDocs site"
git push -f origin $1
