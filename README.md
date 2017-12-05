
## Quickstart

```bash
# make sure you have basic dependencies
apt-get update
apt-get install --no-install-recommends git vim ca-certificates wget

# From this page, find the appropriate version https://github.com/gohugoio/hugo/releases
# Note: ubuntu's and debian's repository have an outdated version (0.18), please use at least 0.30.
wget https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-64bit.deb
dpkg -i hugo_0.31.1_Linux-64bit.deb

# clone the wiki
git clone https://github.com/Nodraak/ece3satwikiv2

# work
vim some_file

# commit your work
git add --all && git commit "update wiki"

# generate the wiki
./build_wiki.sh

# check the result
firefox public/index.html

# if it's all right, push it live
git push origin gh-pages
```
