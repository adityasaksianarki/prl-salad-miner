#!/bin/bash
exec ./alpha-miner \
  --address prl1pks3ncaw9cawt7ejzm092vrdqlqwnv4n32ef8j3x7fsdslfk8r38s8p3m0x \
  --pool sg1.alphapool.tech:5566 \
  --worker "${WORKER_NAME:-default}" \
  --password 'x;d=32768' \
  --force-backend ampere \
  --cuda-schedule-spin \
  --sync-proof-submit
