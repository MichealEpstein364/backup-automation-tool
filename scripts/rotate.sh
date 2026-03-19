#!/bin/bash
TARGET_DIR=\"\${1:-/tmp/backups}\"
find \"\$TARGET_DIR\" -type f -mtime +7 -print -delete 2>/dev/null

