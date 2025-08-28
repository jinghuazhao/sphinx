#!/usr/bin/bash

for f in README docs .github
do
  git add $f
  git commit -m "$f"
done
git push
