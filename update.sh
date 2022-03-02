#!/usr/bin/env bash

# Build a single page website and prettify the HTML
npx --yes -- single-page-markdown-website 'w*.md' --open
prettier-eslint --print-width 95 build/index.html >docs/index.html
