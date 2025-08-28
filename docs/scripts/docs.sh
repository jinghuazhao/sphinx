#!/usr/bin/bash

touch .nojekyll
git add .nojekyll
git commit -m "Add .nojekyll to bypass Jekyll processing"

cd docs
make clean
make html
cd -

for f in README.md docs .github
do
  git add $f
  git commit -m "$f"
done
git push
