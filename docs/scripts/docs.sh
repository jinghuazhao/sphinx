#!/usr/bin/bash

touch .nojekyll
git add .nojekyll
git commit -m "Add .nojekyll to bypass Jekyll processing"

for f in README docs .github
do
  git add $f
  git commit -m "$f"
done
git push
