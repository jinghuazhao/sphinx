#!/usr/bin/bash

for f in README docs .github
do
  git add $f
  commit -m "$f"
done
