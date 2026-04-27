#!/usr/bin/env bash
set -euo pipefail

# Build a standalone Scape Room repository and optionally push it to GitHub.
#
# Usage:
#   scripts/deploy-scape-room.sh
#   scripts/deploy-scape-room.sh git@github.com:YOUR_USER/scape-room.git
#
# What it does:
#   1) Copies /scape-room contents into .deploy/scape-room-standalone
#   2) Initializes a fresh git repository there
#   3) Creates an initial commit
#   4) If repo URL is provided, pushes to main

SOURCE_DIR="scape-room"
OUTPUT_DIR=".deploy/scape-room-standalone"
REPO_URL="${1:-}"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: run this script inside the ESL git repository."
  exit 1
fi

if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Error: '$SOURCE_DIR' folder not found."
  exit 1
fi

rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

cp -R "$SOURCE_DIR"/* "$OUTPUT_DIR"/

echo "Creating standalone repository in $OUTPUT_DIR"
(
  cd "$OUTPUT_DIR"
  git init -b main >/dev/null
  git add .
  git commit -m "Initial Scape Room game" >/dev/null

  if [[ -n "$REPO_URL" ]]; then
    git remote add origin "$REPO_URL"
    git push -u origin main
    echo "Pushed to $REPO_URL"
    echo "Enable GitHub Pages: Settings -> Pages -> Deploy from branch (main / root)."
    echo "Game URL: https://YOUR_USER.github.io/scape-room/game.html"
  else
    echo "Standalone repo created locally at: $OUTPUT_DIR"
    echo "To push it manually:"
    echo "  cd $OUTPUT_DIR"
    echo "  git remote add origin <your-repo-url>"
    echo "  git push -u origin main"
  fi
)
