#!/usr/bin/env bash
set -u

SERVER_IP="${1:-10.21.74.130}"

echo "== PING =="
ping -c 4 "$SERVER_IP" || true

echo
echo "== HTTPS =="
curl -k -s -o /dev/null -w "HTTPS OK - Codigo HTTP: %{http_code}\n" \
  --connect-timeout 5 "https://${SERVER_IP}" || true

echo
echo "== TRACEPATH =="
tracepath -n "$SERVER_IP" || true
