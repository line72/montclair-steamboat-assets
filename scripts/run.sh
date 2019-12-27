#!/usr/bin/env bash

set -e

P=$(dirname $0)

source $P/VERSIONS
source ENV

./transmogrifier-steamboat
