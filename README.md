# Sphinx

This is a template for documentation using sphinx-rtd-theme.

## Structure

$ docs/tree

```
.
├── build
├── make.bat
├── Makefile
├── scripts
│   ├── docs.sh
│   └── setup.sh
└── source
    ├── conf.py
    ├── index.rst
    ├── page1.rst
    ├── page2.rst
    ├── _static
    │   ├── bees.jpg
    │   ├── custom.css
    │   └── custom.js
    └── _templates

5 directories, 11 files
```

The design mirrors those at <https://cambridge-ceu.github.io/csd3/>.

## Setup

```bash
cd docs
make clean && make html
```

Additional scripts can be found from [this script](docs/scripts/setup.sh).

## Effect

The page is visible from <https://jinghuazhao.github.io/sphinx/>
