#!/bin/bash
#
# Update the wiki (render the markdown sources and push the result)
#
# 1. Work. (Most probably you will write a markdown file in content/Blog/)
# 2. Run ./build_wiki.sh
# 3. Open public/index.html and check your work
# 4. If it's all good, push your changes:
#   Push the generated wiki: git push origin gh-pages
#   Push the source: git push origin master
#

set -e

DIR=$(dirname "$0")

cd $DIR

if [[ $(git status -s) ]]
then
    echo "=> The working directory is dirty. Please commit any pending changes."
    exit 1
fi

echo "=> Cleaning outdated public folder"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "=> Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "=> Removing existing files"
rm -rf public/*

echo "=> Generating site"
hugo

echo "=> Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)"

echo "=> Done. You can now push your changes: git push origin gh-pages"
