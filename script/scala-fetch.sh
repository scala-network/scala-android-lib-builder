#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/scala-network/Scala"
version="development"

if [ ! -d "scala" ]; then
  git clone ${url} -b ${version}
  cd scala
else
  cd scala
  git checkout ${version}
  git pull
fi

git submodule update --recursive --init
