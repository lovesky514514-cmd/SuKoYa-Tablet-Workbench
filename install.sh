#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
cd "$(dirname "$0")"

echo "[1/4] Updating Termux packages..."
pkg update -y

echo "[2/4] Installing core runtime: Node.js LTS + Python + Clang + Git..."
pkg install -y nodejs-lts python clang git

if [[ "${1:-}" != "--lite" ]]; then
  echo "[3/4] Installing full language pack: Rust + Go + OpenJDK 17..."
  pkg install -y rust golang openjdk-17
else
  echo "[3/4] Lite mode selected: skipping Rust / Go / Java."
fi

echo "[4/4] Installing local web workbench dependencies..."
npm install --omit=dev
mkdir -p "$HOME/workbench-projects"
chmod +x start.sh stop.sh doctor.sh

echo
echo "Install complete."
echo "Start with: ./start.sh"
echo "Lite install later upgrade: pkg install rust golang openjdk-17"
