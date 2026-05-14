#!/usr/bin/env bash
# Save the latest transcript of the current session to a daily markdown file (append only)
TODAY=$(date -u +%Y-%m-%d)
DEST="/home/ubuntu/.openclaw/workspace/memory/${TODAY}.md"
mkdir -p "$(dirname "$DEST")"
# Fetch the latest 200 messages (adjust as needed) and append to the daily file
openclaw sessions_history --sessionKey=current --limit=200 >> "$DEST"
# Separate entries for readability
echo -e "\n---\n" >> "$DEST"
