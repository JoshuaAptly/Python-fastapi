#!/usr/bin/env bash
set -euo pipefail

branch="$(git rev-parse --abbrev-ref HEAD)"

if [[ "$branch" == "main" || "$branch" == "master" ]]; then
  exit 0
fi

pattern='^(feature|fix|chore|docs|test)/[a-z0-9._-]+$'

if [[ ! "$branch" =~ $pattern ]]; then
  echo "Invalid branch name: '$branch'"
  echo "Use: feature/..., fix/..., chore/..., docs/..., or test/..."
  echo "Example: feature/hello-world"
  exit 1
fi