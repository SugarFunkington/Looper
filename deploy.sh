#!/usr/bin/env sh

# abort on errors
set -e

# build

npm run build

#navigate into the build output directory
cd dist

echo > .nojekyll

git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:SugarFunkington/Looper.git main:gh-pages
cd -