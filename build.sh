#!/usr/bin/env bash

# Fail fast on error
set -e

BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd application
mvn clean package -DskipTests
popd