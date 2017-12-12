#!/bin/bash
set -e
echo "Running benchmarks for '$1'"
touch $OUT_FILE
echo "Test results for '$1':" | tee -a $OUT_FILE
bombardier -c 100 -d 30s http://$1:${PORT}${TEST_ROUTE} | tee -a $OUT_FILE
echo "" | tee -a $OUT_FILE
