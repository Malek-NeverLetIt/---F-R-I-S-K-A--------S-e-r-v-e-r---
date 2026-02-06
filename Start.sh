#!/bin/bash

# Start Minecraft server
java -Xms12G -Xmx12G -jar mohist-1.16.5-8c7caaf.jar --nogui &

MC_PID=$!

# Start Playit
./playit &

PLAYIT_PID=$!

# Wait for Minecraft to finish
wait $MC_PID

# Kill Playit when server stops
kill $PLAYIT_PID
