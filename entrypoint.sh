#!/usr/bin/env bash

# Default GITHUB_SHA
tag="${GITHUB_SHA}"
echo "cont=true" >> $GITHUB_ENV
# If release parse the tag name from GITHUB_REF
if [ "${GITHUB_EVENT_NAME}" == "release" ]; then
  ref="${GITHUB_REF}"
  tag="GETBACK"
  echo "cont=false" >> $GITHUB_ENV
fi

echo "::set-output name=tag::$tag"
echo "sha=$tag" >> $GITHUB_ENV
