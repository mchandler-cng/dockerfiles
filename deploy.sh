#!/usr/bin/env bash

BASE="markachandler"

for d in */; do
  TARGET="${BASE}/${d%/}:"

  for m in $d*/; do
    PACKAGE="${m#"$d"}"
    PACKAGE="${TARGET}${PACKAGE%/}"
    (
      cd $m

      echo "-+- Building $PACKAGE..."
      docker build -t $PACKAGE .

      echo "-+- Pushing $PACKAGE to Docker Hub..."
      docker push $PACKAGE
    )
  done
done
