#!/bin/bash

# execute the command and check the exit code is 1
atlasaction-copy --action migrate/lint
if [ $? -ne 1 ]; then
  echo "Expected exit code 1, got $?"
  exit 1
else
  echo "Exit code 1 as expected"
  exit 0
fi