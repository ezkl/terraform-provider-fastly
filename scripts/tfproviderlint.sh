#!/usr/bin/env bash

# Check tfproviderlint
echo "==> Running tfproviderlint..."
if ! command -v tfproviderlint > /dev/null; then
  echo "==> Install tfproviderlint..."
  go get -u github.com/bflad/tfproviderlint/cmd/tfproviderlint
fi

tfproviderlint ./...
exit $?
