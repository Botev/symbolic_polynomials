#!/bin/bash
cargo doc
echo "Finished docs"
cd target/doc
git init
git config user.name "Botev"
git config user.email "botevmg@gmail.com"
cp ../../README.md ./README.md
cp ../../LICENSE ./LICENSE
cp ../../index.html ./index.html
echo "Added all"
git add .
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages
