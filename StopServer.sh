#!/bin/bash
echo "Stopping any running Minecraft processes..."

# 1. Kill the process using the Minecraft port (25565)
fuser -k 25565/tcp

# 2. Wait a second for it to close
sleep 1

# 3. Force remove the session.lock file that causes the error
rm -f /workspaces/MiniGames/./MiniGames/session.lock

echo "Server processes cleared and session.lock removed. You can now run ./Start.sh"
