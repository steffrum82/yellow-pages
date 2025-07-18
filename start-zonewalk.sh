#!/usr/bin/env bash
set -e
export PATH=".:$PATH"
if [ ! -e tlds.txt ]; then
	mk-tlds
fi
xargs -P 8 -I {} zone-transfer {} <tlds.txt

