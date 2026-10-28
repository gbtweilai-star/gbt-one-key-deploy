#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_one_key_deploy info
PYTHONPATH=src python -m gbt_one_key_deploy check --payload '{"target": "<在此填写>"}'
PYTHONPATH=src python -m gbt_one_key_deploy run   --payload '{"target": "<在此填写>"}'
