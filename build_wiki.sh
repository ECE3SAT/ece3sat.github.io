#!/bin/bash
#
# Update the wiki (render the markdown sources and push the result)
#
# 1. Work: most probably you will write a markdown file in content/Blog/
# 2. Check your work:
#     1. Run `hugo server -D`. Note that once hugo is running, it will auto-reload when you edit a file.
#     2. Open `http://localhost:1313/`
# 3. If it's all good, deploy your changes:
#     1. Commit your changes
#     2. Run the build: `./build_wiki.sh`
#     3. Push the sources and the generated wiki: `git push origin master && git push origin gh-pages`
#

set -e

DIR=$(dirname "$0")

function log() {
    RESET='\033[0m'
    BLUE='\033[0;34m'
    printf "${BLUE}${@}${RESET}\n"
}

cd $DIR

if [[ $(git status -s) ]]
then
    log "=> The working directory is dirty. Please commit any pending changes."
    exit 1
fi

log "=> Cleaning outdated public folder"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

log "=> Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

log "=> Removing existing files"
rm -rf public/*

log "=> Generating site"
hugo

log "=> Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (build_wiki.sh)"

log "=> Done. You can now push your changes: git push origin gh-pages"
