#!/usr/bin/env bash
set -e
export PATH=".:$PATH"
mk-tlds
xargs -P 8 -I {} zone-transfer {} <tlds.txt

