#!/bin/bash

set -x
notebook="notebook-mania2"
jupyter nbconvert --to slides $notebook.ipynb --reveal-prefix "https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.3.0"
jupyter nbconvert --to html $notebook.ipynb
mv $notebook.slides.html index.html
rm -rf public
mkdir public
mv index.html $notebook.html public/
cp -r images public/
mv public/images/favicon.ico public/
