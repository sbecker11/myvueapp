#!/usr/bin/env sh

REPO=myvueapp
USERNAME=${GITHUB_USERNAME}
PASSWORD=${GITHUB_PASSWORD}

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

echo "git init"
git init

# echo "${REPO}" > description

echo "git add all"
git add -A

echo "git commit"
git commit -m 'deployed'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
echo "git push -f git@github.com:${USERNAME}:${PASSWORD}/${REPO}.git master:gh-pages"
git push -f git@github.com:${USERNAME}:${PASSWORD}/${REPO}.git master:gh-pages

cd -
