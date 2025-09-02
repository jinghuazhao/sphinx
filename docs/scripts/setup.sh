#!/usr/bin/bash

# set up python3.12
cd ~/rds/software
module load ceuadmin/python
python --version
python -m venv python3.12
source python3.12/bin/activate
pip install sphinx
pip install sphinx_rtd_theme
pip install sphinxcontrib-mermaid
cd -
# create sphinx
mkdir sphinx && cd sphinx
echo Sphinx > README.md
module load ceuadmin/cli
git init && git add . && git commit -m "Initial commit"
gh repo create sphinx --description "Sphinx project" --public --source=. --remote=origin --push
touch .nojekyll
sphinx-quickstart docs
cd docs
# module load ceuadmin/ImageMagick/
# magick bees.jpg bees.png
make clean && make html
cd -
git add .nojekyll
git commit -m "Add .nojekyll to bypass Jekyll processing"
git add docs
git commit -m "docs"
git push
