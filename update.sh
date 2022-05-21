#!/usr/bin/env bash

# Build a single page website and prettify the HTML
npx --yes -- single-page-markdown-website 'w*.md'
prettier-eslint --print-width 95 build/index.html |
    perl -p -e 's+-1.svg+.svg+g' >docs/index.html
open docs/index.html
