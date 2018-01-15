
# README_dev.md

This static site uses the https://gohugo.io/ generator.

## File Tree Structure

This repo has the following content:

* `content/`: the actual blog posts
* `layouts/shortcodes/`: macro (HTML snippet). Read the documentation header
* `static/`: static files (images, pdf, ...)
* `themes/`: the theme (custom theme for ece3sat) (css/js), detailled later
* `config.toml`: Go Hugo's config file

The `theme/ece3sat/` folder has the following content:

* `layouts/`:
    * `_default/` main templates:
        * `baseof.html`: main template
        * `list.html`: list articles
        * `single.html`: single article
    * `partials/`: included templates (navbar and footer)
    * `404.html`: page not found
    * `index.html`: home page
* `static/`: static files (css, js, font)

## Technical Choices

The core principals are:

* The wiki must be hosted for free
* The editing should be as simple as possible (simple markup language and easy edit-deployment workflow)

This implies several things:

* The deployed content must be static (only HTML / CSS, not database or server side code).
* Since Github Pages offer free hosting for static content, it is a good candidate for hosting.
* A good markup language is Markdown. It is easy and fast to write and to learn (much more than HTML).

## Miscs

To check for HTML errors (404 and others):

```bash
URL="http://localhost:1313/"
wget -r --adjust-extension $URL 2> out
grep "HTTP" out | grep -v 200
```
