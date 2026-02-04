#!/bin/sh
echo "Waiting for database to be ready..."

until nc -z "$DB_HOST" "$DB_PORT"; do
  echo "Database not reachable yet..."
  sleep 2
done

echo "Database is reachable. Starting n8n..."
n8n start
