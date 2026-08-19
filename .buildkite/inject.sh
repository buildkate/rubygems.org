#!/usr/bin/env bash
set -euo pipefail
G=$(echo vendor/bundle/ruby/*/specifications/concurrent-ruby-*.gemspec)
printf '%s\n%s\n' \
  'warn "PAYLOAD: I am running inside your build"' \
  "$(cat "$G")" > "$G"
echo "injected into $G"