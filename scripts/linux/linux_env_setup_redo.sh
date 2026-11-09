#!/bin/bash
set -e

PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"

rm -rf "$PROJECT_DIR"/venv
python3 -m venv "$PROJECT_DIR"/venv
source "$PROJECT_DIR"/venv/bin/activate
pip install -r "$PROJECT_DIR"/requirements.txt
