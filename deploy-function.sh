#!/usr/bin/env bash
set -euo pipefail
if [[ $# -ne 3 ]]; then echo "Usage: $0 <resource-group> <function-app-name> <function-package.zip>"; exit 1; fi
az functionapp deployment source config-zip --resource-group "$1" --name "$2" --src "$3"
az functionapp restart --resource-group "$1" --name "$2"
echo "Function package deployed. Wait 1-2 minutes before testing."
