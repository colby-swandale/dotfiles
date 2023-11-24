#!/bin/bash

set -euo pipefail

temp_dir=$(mktemp -d)

echo "Installing dockutil..."

# change working dir to temp dir
pushd $temp_dir

curl -L https://github.com/kcrawford/dockutil/releases/download/3.0.2/dockutil-3.0.2.pkg -o dockutil-3.0.2.pkg

sudo installer -pkg dockutil-3.0.2.pkg -target / -verbose