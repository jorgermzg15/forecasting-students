#!/bin/zsh

# Fast Forecasting Codespaces setup script
# Minimal, safe, and reproducible for classroom use.

set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
PROJECT_DIR="${1:-}" # allow passing project dir or default to workspace root

if [[ -z "$PROJECT_DIR" ]]; then
  # Default to Codespaces workspace mount or current dir
  PROJECT_DIR="${CODESPACE_VSCODE_FOLDER:-$PWD}"
fi

print "[setup] Proyecto: $PROJECT_DIR"

# Create virtual environment (inside container/home)
print "[setup] Creando entorno virtual (.venv)"
python -m venv "$PROJECT_DIR/.venv"

# Activate venv for this shell session
source "$PROJECT_DIR/.venv/bin/activate"

# Upgrade basic build tools
pip install --upgrade pip setuptools wheel

# Install requirements if present (root of repo)
REQ_FILE="$PROJECT_DIR/requirements.txt"
if [[ -f "$REQ_FILE" ]]; then
  print "[setup] Instalando dependencias desde requirements.txt"
  pip install --cache-dir "/usr/local/share/pip-cache" -r "$REQ_FILE"
else
  print "[setup] No se encontró requirements.txt en $PROJECT_DIR (saltando instalación)"
fi

# VS Code settings for Python + Jupyter
mkdir -p "$PROJECT_DIR/.vscode"
cat > "$PROJECT_DIR/.vscode/settings.json" << EOF
{
  "python.defaultInterpreterPath": "${PROJECT_DIR}/.venv/bin/python",
  "python.terminal.activateEnvironment": true,
  "jupyter.askForKernelRestart": false,
  "jupyter.interactiveWindowMode": "perFile"
}
EOF

print "[setup] Entorno listo en $PROJECT_DIR"
