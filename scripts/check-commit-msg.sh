#!/usr/bin/env bash
set -euo pipefail

msg_file="$1"
msg="$(head -n 1 "$msg_file")"

pattern='^(feat|fix|chore|docs|test|refactor)(\(.+\))?: .+'

if [[ ! "$msg" =~ $pattern ]]; then
  echo "Invalid commit message: '$msg'"
  echo "Use: feat: ..., fix: ..., chore: ..., docs: ..., test: ..., refactor: ..."
  echo "Example: feat: add root endpoint"
  exit 1
fi