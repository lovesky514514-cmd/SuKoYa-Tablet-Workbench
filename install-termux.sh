#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
REPO="https://github.com/lovesky514514-cmd/SuKoYa-Tablet-Workbench.git"
DIR="$HOME/SuKoYa-Tablet-Workbench"
pkg update -y
pkg install -y git curl
if [[ -d "$DIR/.git" ]]; then
  git -C "$DIR" pull --ff-only
else
  rm -rf "$DIR"
  git clone "$REPO" "$DIR"
fi
cd "$DIR"
chmod +x setup.sh install.sh start.sh stop.sh doctor.sh
./setup.sh
