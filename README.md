# goravjindal.github.io

A small academic website built with [Jekyll](https://jekyllrb.com/) and
[Jekyll Scholar](https://github.com/inukshuk/jekyll-scholar).

Publications are generated directly from `_bibliography/papers.bib`. Edit the
BibTeX file, rebuild, and the publications page updates.

## Pages

- `/` — brief introduction, selected publications, and news
- `/research/` — research interests
- `/publications/` — all publications, grouped by year
- `/teaching/` — courses
- `/cv/` — curriculum vitae

The old blog lives in `archive/blog/` and is excluded from the build. It is kept
in git so it can be restored later.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Then open <http://localhost:4000>.

## Deployment

Pushing to `main` builds the site with GitHub Actions and publishes `_site` to
the `gh-pages` branch.
