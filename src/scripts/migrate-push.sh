#!/bin/bash

DIR_NAME=$(circleci env subst "${PARAM_DIR_NAME}")
TAG=$(circleci env subst "${PARAM_TAG}")
DIR=$(circleci env subst "${PARAM_DIR}")
CONFIG=$(circleci env subst "${PARAM_CONFIG}")
ENV=$(circleci env subst "${PARAM_ENV}")
VARS=$(circleci env subst "${PARAM_VARS}")
DEV_URL=$(circleci env subst "${PARAM_DEV_URL}")

ARGS=""
if [ -n "$TAG" ]; then
  ARGS="$DIR_NAME:$TAG"
else
  # if TAG is not set, use commit SHA1
  ARGS="$DIR_NAME:$CIRCLE_SHA1"
fi
ARGS="$ARGS --dev-url $DEV_URL"
if [ -n "$DIR" ]; then
  ARGS="$ARGS --dir $DIR"
fi
if [ -n "$CONFIG" ]; then
  ARGS="$ARGS --config $CONFIG"
fi
if [ -n "$ENV" ]; then
  ARGS="$ARGS --env $ENV"
fi
if [ -n "$VARS" ]; then
  for _var in $VARS
  do
    ARGS="$ARGS --var $_var"
  done
fi

# shellcheck disable=SC2086
atlas migrate push $ARGS
