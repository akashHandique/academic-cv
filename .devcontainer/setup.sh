#!/usr/bin/env bash
set -e


curl -sSL -o /tmp/hugo.deb \
  "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb"
sudo dpkg -i /tmp/hugo.deb

corepack enable pnpm
pnpm install --no-frozen-lockfile

HUGO_VERSION=0.161.1