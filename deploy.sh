#!/bin/bash
# Regenerate index.html and push to GitHub Pages
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
/opt/homebrew/bin/python3.13 ~/clawd/projects/music-monitor/scripts/generate_report.py
git add -A
git commit -m "update $(date +%Y-%m-%d)" || echo "nothing to commit"
git push
