#!/usr/bin/bash

cd docs
make clean && make html
cd -

for f in README.md docs .github
do
  git add $f
  git commit -m "$f"
done
git push
