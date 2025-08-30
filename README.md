# Sphinx

This is a template for documentation using sphinx-rtd-theme.

## Structure

The docs/ directory tree is as follows,

$ tree

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

After adding categories, we have

```
.
├── build
├── make.bat
├── Makefile
├── scripts
│   ├── docs.sh
│   └── setup.sh
└── source
    ├── applications
    │   └── index.rst
    ├── conf.py
    ├── index.rst
    ├── page1.rst
    ├── page2.rst
    ├── python
    │   └── index.rst
    ├── r
    │   └── index.rst
    ├── _static
    │   ├── bees.jpg
    │   ├── custom.css
    │   └── custom.js
    ├── systems
    │   ├── ceuadmin.rst
    │   ├── index.rst
    │   ├── setup.rst
    │   └── systems.rst
    └── _templates

9 directories, 18 files
```

The design, in particular its sidebar, mirrors those at <https://cambridge-ceu.github.io/csd3/>.

## Build

After cloned into a local directory with a Python environment, it is furnished as follows,

```bash
cd docs
make clean && make html
```

Additional details can be found from a file named [setup.sh](docs/scripts/setup.sh). Regular pushing to GitHub is done via [docs.sh](docs/scripts/docs.sh) which also takes [.github/workflows/docs.yml](.github/workflows/docs.yml) for CI and gh-pages.

## Browse

One can use a browser locally for docs/build/html and the page is visible remotely from <https://jinghuazhao.github.io/sphinx/>.
