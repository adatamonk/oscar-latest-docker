#!/bin/sh
# wait-for-mariadb.sh

set -e

host="$1"

until mysqladmin status -h $host -uroot -pliyi 2>/dev/null; do
  >&2 echo "Maria is unavailable - sleeping 3 secs"
  sleep 3
done

>&2 echo "Maria is up"