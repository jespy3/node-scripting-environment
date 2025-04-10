#!/bin/bash
# For use in local development via Docker Compose

docker compose -f env-node/compose.yaml run --rm box $@

