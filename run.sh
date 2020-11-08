#!/bin/sh

set -e

echo "$AWS_ACCESS_KEY:$AWS_SECRET_ACCESS_KEY" > passwd && chmod 600 passwd
s3fs "$S3_BUCKET" "$MNT_POINT" -o passwd_file=passwd  && tail -f /dev/null
