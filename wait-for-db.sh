#!/bin/sh
echo "Waiting for database to be ready..."

until nc -z "dpg-d61ioschg0os73d145ig-a" "5432"; do
  echo "Database not reachable yet..."
  sleep 2
done

echo "Database is reachable. Starting n8n..."
n8n start

