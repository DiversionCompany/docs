#!/usr/bin/env bash

# This script is used to regenerate the API reference docs

find api-reference -maxdepth 1 -type d -exec rm -rf {} \;

cp ../diversion/core/api/coreapi.yml api-reference/openapi.yml

ENDPOINTS=$(npx @mintlify/scraping@latest openapi-file api-reference/openapi.yml -o api-reference)

#MDX_SPEC=$(echo "$ENDPOINTS" | jq -r '.endpoints | keys | join(" ")')

echo "$ENDPOINTS"