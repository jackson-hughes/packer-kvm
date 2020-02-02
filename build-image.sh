#!/usr/bin/env bash

set -e

ARTIFACT_DIR="packer_artifacts"
PACKER_JSON="centos7.json"

# Pre
rm -rf "$ARTIFACT_DIR"

# Packer build

packer build "$PACKER_JSON"
