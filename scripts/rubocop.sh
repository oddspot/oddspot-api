#!/bin/sh

FILES=$(git diff --name-only --diff-filter=MA origin/development..$CIRCLE_SHA1  | grep -E '\.(rb|rake)')
echo $FILES

if test -z "$FILES" 
then
      echo "There is no files to lint."
else
      bundle exec rubocop $FILES
fi
