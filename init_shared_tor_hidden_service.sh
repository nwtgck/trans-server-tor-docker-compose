#! /bin/sh

# Initialize "tor_hidden_service" for docker volume sharing

TOR_HIDDEN_SERVICE_PATH=./docker_volumes/tor_hidden_service

mkdir -p $TOR_HIDDEN_SERVICE_PATH
chmod 700 $TOR_HIDDEN_SERVICE_PATH
