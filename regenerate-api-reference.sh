#!/usr/bin/env bash

find ./api-reference/ -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} \; || exit 1

cp ../diversion/core/api/coreapi.yml api-reference/openapi.yml || exit 1

ENDPOINTS=$(npx --yes @mintlify/scraping@latest openapi-file api-reference/openapi.yml -o api-reference --yes)

#MDX_SPEC=$(echo "$ENDPOINTS" | jq -r '.endpoints | keys | join(" ")')

echo "$ENDPOINTS"