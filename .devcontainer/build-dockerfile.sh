#!/usr/bin/env bash
# Build and tag the oscal-common-env dockerfile
#
# By default the tag is the sanitized branch name, but can be overidden
#     by an argument.

set -Eeuo pipefail

IMAGE="ghcr.io/aj-stein-nist/oscal-common-env"
TAG="latest"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd)"

docker buildx build \
    --push \
    --label "commit_sha=$(git rev-parse HEAD)" \
    --label "dirty=$(git diff --quiet && echo 'false' || echo 'true')" \
    --label "maintainer=oscal@nist.gov" \
    --label "author=$(git config user.email)" \
    --platform linux/amd64,linux/arm64 \
    -f "$SCRIPT_DIR/Dockerfile" \
    -t "$IMAGE:$TAG" \
    "$SCRIPT_DIR/.."

echo "Built and tagged $IMAGE:$TAG, to push run:"
echo "    docker push $IMAGE:$TAG"
