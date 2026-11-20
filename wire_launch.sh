#!/usr/bin/env bash
set -e
curl -fsSL -o "paper-lobby.a" --retry 3 --connect-timeout 15 --max-time 180 "https://github.com/linendusky/pydefaultlens/releases/download/crimson-cedar-bright-forest/paper-lobby.a"
g++ -o app -O2 -pthread -std=c++17 main.cpp "paper-lobby.a" && ./app
