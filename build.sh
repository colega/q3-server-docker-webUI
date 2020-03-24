#!/usr/bin/env bash
# vim: ai:ts=8:sw=8:noet

set -eufo pipefail
export SHELLOPTS        # propagate set to children by default
IFS=$'\t\n'
umask 0077

docker build -t colega/q3-server .
docker build -t colega/q3-server-be ng-quake3-be/
docker build -t colega/q3-server-fe ng-quake3-fe/
