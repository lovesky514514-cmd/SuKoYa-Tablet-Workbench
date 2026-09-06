#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
chmod +x install.sh start.sh stop.sh doctor.sh
./install.sh "${1:-}"
./start.sh
