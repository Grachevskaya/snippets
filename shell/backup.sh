#!/bin/sh
# keep the last few copies of a directory
set -eu
src=${1:?source}
dst=${2:?destination}
mkdir -p "$dst"
tar -C "$src" -cf - . | gzip -9 > "$dst/$(date +%Y%m%d-%H%M%S).tar.gz"
ls -1t "$dst"/*.tar.gz | tail -n +6 | xargs -r rm -f
