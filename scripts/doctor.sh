#!/usr/bin/env bash
# Diagnóstico leve deste repo + ferramentas comuns
set -euo pipefail

echo "=== Jarvis Local — doctor ==="
echo

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
echo "Repo: $ROOT"
echo

bash "$ROOT/scripts/check-deps.sh"

echo
echo "--- Ficheiros de prompt ---"
for f in instalar-openjarvis.md configurar-voz-pt.md duas-palmas.md; do
  if [[ -f "$ROOT/prompts/$f" ]]; then
    echo "[OK] prompts/$f"
  else
    echo "[FALTA] prompts/$f"
  fi
done

echo
echo "Se o OpenJarvis estiver instalado noutro sítio, corre lá o 'jarvis doctor' oficial."
echo "Este script só valida o kit Jarvis-Local + ferramentas no PATH."
