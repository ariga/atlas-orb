#!/bin/bash

# execute the command and check the exit code is 1
# testing purpose only, use for integration tests
atlasaction-origin --action schema/test
if [ $? -ne 1 ]; then
  echo "Expected exit code 1, got $?"
  exit 1
else
  echo "Exit code 1 as expected"
  exit 0
fi