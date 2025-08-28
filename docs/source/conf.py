# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'Sphinx'
copyright = '2025, Jing Hua Zhao'
author = 'Jing Hua Zhao'
release = '0.0.1'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.githubpages',
    # any others you need…
]

templates_path = ['_templates']
exclude_patterns = []



# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

# html_theme = 'alabaster'
import sphinx_rtd_theme
html_logo = "_static/bees.jpg"
html_theme = "sphinx_rtd_theme"

# Optionally:
extensions.append("sphinx_rtd_theme")
html_static_path = ['_static']

html_theme_options = {
    'logo_only': True,
    'collapse_navigation': False,
    'navigation_depth': 4,
    'sticky_navigation': True,
}

def setup(app):
    app.add_css_file("custom.css")
