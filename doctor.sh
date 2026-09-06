#!/data/data/com.termux/files/usr/bin/bash
set +e
printf '%-12s %s\n' TOOL VERSION
for t in node npm python clang clang++ rustc go javac java; do
  if command -v "$t" >/dev/null 2>&1; then
    v="$($t --version 2>&1 | head -n 1)"
    printf '%-12s %s\n' "$t" "$v"
  else
    printf '%-12s %s\n' "$t" "MISSING"
  fi
done
printf '\nWorkbench files: '
[[ -f node_modules/monaco-editor/min/vs/loader.js ]] && echo OK || echo 'run ./install.sh'
