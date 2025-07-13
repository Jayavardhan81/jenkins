#!/bin/bash
echo "Running tests..."
curl --version > /dev/null 2>&1 && echo "Test passed!" || echo "Test failed!"
