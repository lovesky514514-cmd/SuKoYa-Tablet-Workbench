#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
PIDFILE="$HOME/.tablet-workbench/workbench.pid"
if [[ -f "$PIDFILE" ]]; then
  PID="$(cat "$PIDFILE")"
  if kill -0 "$PID" 2>/dev/null; then kill "$PID"; fi
  rm -f "$PIDFILE"
  echo "Workbench stopped."
else
  echo "Workbench is not running."
fi
