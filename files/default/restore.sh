#!/bin/sh

. /etc/duplicity/config.sh
. /etc/duplicity/backups/$1.sh

nice ionice -c3 duplicity \
  --name "$BACKUP_NAME" \
  --archive-dir "$ARCHIVE" \
  --gpg-options "--homedir=~$DUPLICITY_USER/.gnupg" \
  --s3-use-new-style \
  "s3+http://$S3_BUCKET/$BACKUP_NAME" \
  "$BACKUP_PATH" \
  | logger -t duplicity
