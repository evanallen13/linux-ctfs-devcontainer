#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [[ -f /var/log/setup_complete ]]; then
    echo "CTF setup already completed in this container."
    exit 0
fi

echo "Running ctf_setup.sh (this can take several minutes)..."
sudo bash ./ctf_setup.sh

echo "Provisioning finished."
echo "Use: sudo -iu ctf_user"
echo "Then run: verify list"
