#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

docker build -t regexplanet-js .
docker run \
	-it \
	--publish 4000:4000 \
	--expose 4000 \
	--env PORT='4000' \
	--env COMMIT=$(git rev-parse --short HEAD)-local \
	--env LASTMOD=$(date -u +%Y-%m-%dT%H:%M:%SZ) \
	regexplanet-js

