#!/bin/bash

CURRENT_DATE=$(date +"%Y-%m-%d")
SCRIPT_FOLDER=$(dirname "$(readlink -f "$0")")

docker build -t "phoenix-new:${CURRENT_DATE}" -t "phoenix-new:latest" "${SCRIPT_FOLDER}"
