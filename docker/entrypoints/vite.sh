#!/bin/sh
set -x

rm -rf /app/tmp/pids/server.pid
rm -rf /app/tmp/cache/*

if [ ! -d "/app/node_modules/.pnpm" ]; then
  pnpm install
fi

echo "Ready to run Vite development server."

export VITE_RUBY_HOST=0.0.0.0
exec "$@"
