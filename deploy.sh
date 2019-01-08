#!/bin/bash
#
# deploy the js backend to Zeit
#

set -o errexit
set -o pipefail
set -o nounset

now \
    --env COMMIT=$(git rev-parse --short HEAD) \
    --env LASTMOD=$(date -u +%Y-%m-%dT%H:%M:%SZ) \
    && now alias \
    && now rm $(cat ./now.json | jq '.name' --raw-output) --safe --yes
