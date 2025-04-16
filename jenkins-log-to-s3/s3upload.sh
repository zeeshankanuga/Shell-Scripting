#!/bin/bash

# Set your Jenkins log directory and S3 bucket base path
LOG_DIR="/var/lib/jenkins/jobs"
S3_BUCKET="s3://zeeshan-s3-backend-xyz"
TODAY=$(date +"%Y-%m-%d")
DEST_FOLDER="$S3_BUCKET/$TODAY"

# Find today's logs
LOG_FILES=$(find "$LOG_DIR" -type f -name "*$TODAY*")

# Check if logs exist
if [ -z "$LOG_FILES" ]; then
  echo "No logs found for $TODAY."
  exit 0
fi

# Upload and delete
for LOG_FILE in $LOG_FILES; do
  BASENAME=$(basename "$LOG_FILE")
  echo "Uploading $LOG_FILE to $DEST_FOLDER/$BASENAME..."

  aws s3 cp "$LOG_FILE" "$DEST_FOLDER/$BASENAME"
  if [ $? -eq 0 ]; then
    echo "Successfully uploaded. Deleting $LOG_FILE..."
    sudo rm -f "$LOG_FILE"
  else
    echo "Failed to upload $LOG_FILE. Keeping it for now."
  fi
done

echo "All done for $TODAY."


