#!/bin/bash
if ([[ "${TRAVIS_BRANCH}" == "master" ]] || [[ ! -z "${TRAVIS_TAG}" ]]) && [[ "$TRAVIS_PULL_REQUEST" == "false" ]]; then
  echo "This will deploy!"
else
  echo "This will not deploy!"
fi
