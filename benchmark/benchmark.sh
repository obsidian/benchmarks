#!/bin/bash
set -e
echo "----------------------------------------------"  | tee -a $OUT_FILE
echo "Benchmarks for $1"  | tee -a $OUT_FILE
echo "----------------------------------------------"  | tee -a $OUT_FILE
hey -c 100 -n 100000 http://$1:${PORT}${TEST_ROUTE} | tee -a $OUT_FILE
echo "" | tee -a $OUT_FILE
