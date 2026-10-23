#!/usr/bin/env bash
# Verifica dependências básicas no PATH
set -euo pipefail

echo "=== Jarvis Local — check de dependências ==="
echo

check() {
  if command -v "$1" >/dev/null 2>&1; then
    echo "[OK] $1: $(command -v "$1")"
  else
    echo "[FALTA] $1"
  fi
}

check git
check curl
check ollama || true
check node || true
check npm || true
check python3 || true
check uv || true

echo
if command -v ollama >/dev/null 2>&1; then
  echo "--- Modelos Ollama ---"
  ollama list || echo "(ollama instalado mas daemon pode estar parado)"
fi

echo
echo "Concluído. Instala o que estiver [FALTA] antes do OpenJarvis."
