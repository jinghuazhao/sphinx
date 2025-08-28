#!/usr/bin/bash

cd ~/rds/software
module load ceuadmin/python
python --version
python -m venv python3.12
source python3.12/bin/activate
pip install sphinx
pip install sphinx_rtd_theme
cd
mkdir sphinx
cd sphinx/
echo Sphinx > README.md
module load ceuadmin/cli
git init && git add . && git commit -m "Initial commit"
gh repo create sphinx   --description "Sphinx project" --public   --source=.   --remote=origin --push
sphinx-quickstart docs
make clean
make html
