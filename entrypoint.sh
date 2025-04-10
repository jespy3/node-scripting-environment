#!/bin/bash -e

if [ "$#" -gt 0 ]; then   # Check if >0 arguments
  exec "$@"
else
  exec "$1"   # Will use the CMD argument in the Dockerfile. ie. start an interactive shell
fi

