#!/usr/bin/env bash
SRC="${1:-.}"
DEST="${2:-./backups}"
mkdir -p "$DEST"
tar -czf "$DEST/backup-$(date +%Y%m%d).tar.gz" "$SRC"
