#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
PORT="${WORKBENCH_PORT:-8787}"
PIDFILE="$HOME/.tablet-workbench/workbench.pid"
LOGFILE="$HOME/.tablet-workbench/workbench.log"
mkdir -p "$HOME/.tablet-workbench"

if [[ -f "$PIDFILE" ]] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; then
  echo "Workbench already running (PID $(cat "$PIDFILE"))."
else
  nohup node server.js >>"$LOGFILE" 2>&1 &
  echo $! > "$PIDFILE"
  sleep 1
fi

URL="http://127.0.0.1:$PORT"
echo "Open: $URL"
if command -v termux-open-url >/dev/null 2>&1; then termux-open-url "$URL" || true; fi
