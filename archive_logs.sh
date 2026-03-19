#!/bin/bash

CONFIG_FILE=\"config.conf\"

if [ -f \"\$CONFIG_FILE\" ]; then
    source \"\$CONFIG_FILE\"
else
    echo \"[!] Missing config file\"
    exit 1
fi

mkdir -p \"\$ARCHIVE_DIR\"

OUT_FILE=\"\$ARCHIVE_DIR/logs_\$(date +%F_%H%M%S).tar.gz\"

echo \"[+] Archiving logs from \$LOG_DIR\"
tar -czf \"\$OUT_FILE\" \"\$LOG_DIR\" 2>/dev/null

if [ -f \"\$OUT_FILE\" ]; then
    echo \"[+] Logs archived: \$OUT_FILE\"
else
    echo \"[!] Log archive failed\"
    exit 1
fi

