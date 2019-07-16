#!/bin/bash

BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$BRANCH" != "feature"* ]]; then
  echo 'This can only be executed on feature branches';
  exit 1;
fi

git flow.feature.update