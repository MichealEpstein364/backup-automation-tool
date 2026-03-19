#!/bin/bash

CONFIG_FILE=\"config.conf\"

if [ -f \"\$CONFIG_FILE\" ]; then
    source \"\$CONFIG_FILE\"
else
    echo \"[!] Missing config file\"
    exit 1
fi

mkdir -p \"\$BACKUP_DIR\"

OUT_FILE=\"\$BACKUP_DIR/backup_\$(date +%F_%H%M%S).tar.gz\"

echo \"[+] Creating backup from \$SOURCE_DIR\"
tar -czf \"\$OUT_FILE\" \"\$SOURCE_DIR\" 2>/dev/null

if [ -f \"\$OUT_FILE\" ]; then
    echo \"[+] Backup created: \$OUT_FILE\"
else
    echo \"[!] Backup failed\"
    exit 1
fi

