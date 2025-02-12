#!/bin/sh

set -x

REPLICA_PATH="/mnt/data/replica"

if [ -d "$REPLICA_PATH" ]; then
  echo "Cleaning up REPLICA: $REPLICA_PATH"
  find $REPLICA_PATH -mindepth 1 -exec rm -rf {} \;
  echo "REPLICA deleted successfully."
else
  echo "REPLICA $REPLICA_PATH not found."
fi
