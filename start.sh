#!/bin/sh
set -e

bundle exec sidekiq -c 2 &
exec ./bin/rails server -b 0.0.0.0 -p "${PORT:-3000}"
