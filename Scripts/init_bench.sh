#!/bin/bash
cd tools/tm-bench
go build
echo "Testing for -T 10 -r 1000 -s 50 Node :$1"
./tm-bench -T 10 -r 1000 -s 50 localhost:26657
echo ""
echo "Testing for -T 10 -r 1000 -s 100 Node :$1"
./tm-bench -T 10 -r 1000 -s 100 localhost:26657
echo ""
echo "Testing for -T 10 -r 1000 -s 500 Node :$1"
./tm-bench -T 10 -r 1000 -s 500 localhost:26657
echo ""
echo "Testing for -T 10 -r 1000 -s 1000 Node :$1"
./tm-bench -T 10 -r 1000 -s 1000 localhost:26657
echo ""
echo "Testing for -T 10 -r 1000 -s 5000 Node :$1"
./tm-bench -T 10 -r 1000 -s 5000 localhost:26657
echo ""
