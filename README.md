
# README.md

*For an explanation of the internals, read `README_dev.md`*

## Prerequisite

* Git (not required but will help in case of problems): https://git-scm.com
* Go Hugo (not required but will help in case of problems): http://gohugo.io/
* Markdown:
    * The original spec: https://daringfireball.net/projects/markdown/syntax
    * Github's Markdown documentation: https://guides.github.com/features/mastering-markdown/
    * Stackedit (in-browser Markdown editor with live preview): https://stackedit.io/editor

## Install And Configure

```bash
# make sure you have the basic dependencies
apt-get update
apt-get install git vim ca-certificates wget

# From this page, find the appropriate version https://github.com/gohugoio/hugo/releases
# Note: ubuntu's and debian's repository have an outdated version (0.18), please use at least 0.30.
wget https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-64bit.deb
dpkg -i hugo_0.31.1_Linux-64bit.deb

# clone the wiki
git clone https://github.com/ECE3SAT/ece3satwiki
```

## Write And Deploy a New Blog Post

The steps are basically:

1. Work: most probably you will write a markdown file in content/Blog/
2. Check your work:
    1. Run `hugo server -D`. Note that once hugo is running, it will auto-reload when you edit a file.
    2. Open `http://localhost:1313/`
3. If it's all good, deploy your changes:
    1. Commit your changes
    2. Run the build: `./build_wiki.sh`
    3. Push the sources and the generated wiki: `git push origin master && git push origin gh-pages`

## Writing Instructions

* The `Home` page should shortly present the project
* The category `The Project` should contain project-wide articles
* The category `Cubesat Modules` should contain Wikipedia-style articles (timeless articles)
* The category `Blog` should contain updates and announcements (timed articles)

