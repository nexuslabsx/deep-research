#!/bin/bash
# SessionStart hook for the deep-research repo.
# Installs the Python deps and Inter font needed for chart generation.
# Only runs in Claude Code on the web (CLAUDE_CODE_REMOTE=true).
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "[session-start] Installing Python chart dependencies..."
pip install --quiet --disable-pip-version-check matplotlib pandas numpy

INTER_DIR="/usr/share/fonts/truetype/inter"
if [ ! -d "$INTER_DIR" ] || [ -z "$(ls -A "$INTER_DIR" 2>/dev/null)" ]; then
  echo "[session-start] Installing Inter font..."
  TMP_DIR="$(mktemp -d)"
  trap 'rm -rf "$TMP_DIR"' EXIT
  if curl -sSL -o "$TMP_DIR/inter.zip" \
      "https://github.com/rsms/inter/releases/download/v4.0/Inter-4.0.zip"; then
    mkdir -p "$INTER_DIR"
    unzip -qo "$TMP_DIR/inter.zip" -d "$TMP_DIR/inter"
    find "$TMP_DIR/inter" -name "Inter-*.ttf" -exec cp {} "$INTER_DIR/" \;
    fc-cache -f >/dev/null 2>&1 || true
    # Clear matplotlib's font cache so it picks up Inter on first chart.
    rm -rf "$HOME/.cache/matplotlib" 2>/dev/null || true
    echo "[session-start] Inter font installed."
  else
    echo "[session-start] WARN: Inter font download failed; charts will fall back to default sans-serif."
  fi
fi

echo "[session-start] Ready."
