#!/bin/sh

FILES=$(git diff --name-only --diff-filter=MA origin/development..$CIRCLE_SHA1  | grep -E '\.(rb|rake)')
bundle exec rubocop $FILES
