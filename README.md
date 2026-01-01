# dir-python — Quarto Notes Site

This repository hosts a Quarto-rendered set of Python programming notes, published as a static website.

The site is available at:

https://dir-python.tylerskluzacek.com

These notes are used for teaching and reference and are intentionally kept simple to update and publish.

---

## Updating the Site (No CI, No GitHub Actions)

This site is published using **GitHub Pages** from a dedicated `gh-pages` branch. All builds are done **locally**.

### One-time setup (already done)

- `main` branch contains **Quarto source**
- `gh-pages` branch contains **only rendered HTML**
- GitHub Pages is configured to serve from:
  - Branch: `gh-pages`
  - Folder: `/ (root)`
- Custom domain is handled via a `CNAME` file

---

## Routine Update Workflow

### 1) Make edits on the `main` branch

```bash
git checkout main
```

Edit `.qmd` files, configuration, or content as needed.

---

### 2) Render the site locally

From the repository root:

```bash
quarto render
```

This produces the rendered site in the `_book/` directory.

---

### 3) Publish to GitHub Pages

Switch to the publishing branch and replace its contents with the new build:

```bash
git checkout gh-pages
git rm -rf .
cp -R _book/* .
echo "dir-python.tylerskluzacek.com" > CNAME
git add -A
git commit -m "Update published site"
git push
```

---

### 4) Return to development

```bash
git checkout main
```

That’s it — no automation, no workflows.

---

## Attribution & Licensing

### Original Work (Huge Credit)

These notes are **adapted from work by James Turk (University of Chicago)**, the original creator of the `dir-python` materials. Huge thanks to James for making the original notes publicly available.

**dir(python)** by **James Turk**  
https://notes.jpt.sh/dir-python/  
Licensed under **Creative Commons Attribution–NonCommercial–ShareAlike 4.0 International (CC BY-NC-SA 4.0)**

### License (This Repository)

This adapted version remains licensed under the **same terms**:

**Creative Commons Attribution–NonCommercial–ShareAlike 4.0 International (CC BY-NC-SA 4.0)**

You are free to:
- Share and adapt the material
- For non-commercial purposes
- As long as attribution is provided
- And derivatives are shared under the same license

---

## Adaptation Notice

While this repository began as an adaptation of James Turk’s original notes, **the content here reflects my own teaching choices, organization, examples, and emphasis**.

Over time, these notes are expected to **continually diverge** from the original source.

Any errors, omissions, or interpretations in this version are my own.

---

## Feedback

If you find these notes useful, please drop me a note!
