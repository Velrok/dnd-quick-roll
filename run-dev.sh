#!/usr/bin/env sh

set -ex

ls src/*.joke | entr -r joker src/server.joke
