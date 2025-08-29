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

## Page-building

After cloned into a local directory with a Python environment, it is furnished as follows,

```bash
cd docs
make clean && make html
```

Additional detailed can be found from a file named [setup.sh](docs/scripts/setup.sh).

## Effect

Locally, one can use a browser for docs/build/html and remotely, the page is visible from <https://jinghuazhao.github.io/sphinx/>.
