#!/usr/bin/env python3
import time
import subprocess
import os

def test_backup_speed():
    start = time.time()
    subprocess.run(['./backup.sh'], capture_output=True)
    end = time.time()
    print(f'Backup time: {end - start:.2f}s')

if __name__ == '__main__':
    test_backup_speed()

