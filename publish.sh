#!/bin/sh
# Publish this folder to the live site (GitHub Pages).
# Always pulls GitHub's latest first, so two copies can't drift apart.
set -e
cd "$(dirname "$0")"

if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -q -m "${1:-Site update $(date '+%Y-%m-%d %H:%M')}"
  echo "Committed: ${1:-Site update}"
else
  echo "No local changes to commit."
fi

echo "Pulling GitHub's latest..."
git pull --rebase origin main

echo "Pushing..."
git push origin main
echo "Done. Live in about a minute at https://keithonekeynetwork.github.io/schoolwallet/"
