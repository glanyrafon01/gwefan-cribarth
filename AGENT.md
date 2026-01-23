# Agent Guide for Gwefan Cribarth

This repository is a Hugo site with the Ananke theme vendored in
`themes/ananke/`. Most work here is content and configuration rather than
application code.

No Cursor rules or Copilot instructions were found in this repo.

## Build, Preview, Lint, Test

Hugo is the primary tool. There is no dedicated test suite in this repo.

- Preview locally (auto-reload):
  - `hugo server`
  - Site runs at `http://localhost:1313`
- Build production output:
  - `hugo`
  - Output goes to `public/`
- Clean/minify build (optional):
  - `hugo --gc --minify`
- Create new content:
  - `hugo new posts/my-post.md`
- Publish helper (build + commit + push):
  - `./publish.sh`

Single-test guidance:
- There is no test runner. Use `hugo server` for a fast feedback loop and
  `hugo` for a full build.

Theme tooling (only if editing the theme):
- Theme dependencies live in `themes/ananke/package.json`.
- There are no lint/test scripts in the theme package. Any edits should be
  validated by running `hugo` or `hugo server` from the repo root.

## Repository Structure

- `content/` Markdown content (posts, sections, pages).
- `hugo.toml` Site configuration.
- `static/` Static assets copied as-is (includes `static/CNAME`).
- `assets/` Hugo Pipes assets (CSS/JS if added).
- `themes/ananke/` Theme submodule/vendor directory.
- `public/` Generated site output. Do not hand-edit.
- `resources/` Hugo build cache. Do not hand-edit.
- `docs/workflow.md` Authoring and publishing guide.

## Content and Front Matter Style

- Front matter uses TOML with `+++` delimiters. Do not switch to YAML.
- Required fields for posts:
  - `title` (string)
  - `date` (RFC3339 timestamp with timezone, as seen in existing posts)
  - `draft` (boolean)
- Use sentence case for titles unless branding dictates otherwise.
- Keep one blank line between front matter and content.
- Use kebab-case filenames for posts (example: `my-new-post.md`).
- Use `_index.md` for section landing pages.
- Prefer absolute-root links for internal references (example: `/projects/...`).

## Content Structure

- Posts live in `content/posts/` and project pages in `content/projects/`.
- Use section index pages (`_index.md`) for listing pages and section metadata.
- For media tied to a single page, consider page bundles (folder with
  `index.md`) so images can be referenced as page resources.
- For site-wide images/icons, use `static/` and reference with `/img/...`-style
  absolute paths.
- Keep summaries short and add `description` in front matter when needed for
  listings or social previews.

## Markdown Conventions

- Use standard Markdown; keep it simple and readable in plain text.
- Wrap long paragraphs naturally; avoid hard line breaks mid-sentence unless
  you are intentionally controlling layout.
- Lists: use `-` for unordered lists; blank line before lists.
- Code blocks: fenced with language tag when applicable.
- Avoid HTML unless Hugo shortcodes or layout behavior require it.

## Links and Media

- Internal links should be absolute from the site root (example: `/posts/...`).
- External links should include the full URL and avoid link-shorteners.
- Prefer descriptive link text over raw URLs in prose.
- Use lowercase, kebab-case filenames for images and keep them in `static/` or
  page bundles.

## Hugo Templates and Layouts

- No custom layouts are currently defined in `layouts/`. If adding one, mirror
  the theme path you want to override and keep overrides minimal.
- Prefer Hugo partials and built-in functions; keep templates readable.
- Trim whitespace in templates only when it improves rendered HTML readability.
- Avoid editing files in `themes/ananke/` unless there is no override path.

## Configuration Conventions

- Main config is `hugo.toml` (TOML). Keep formatting consistent with existing
  key/value style.
- Use kebab-case for any new params/keys unless Hugo expects snake_case.
- Site menus are defined in TOML arrays (`[[menu.main]]`). Keep entries grouped
  by weight and sorted by weight.
- Keep `baseURL`, `title`, `theme`, and `languageCode` in `hugo.toml` accurate
  and consistent with production settings.
- When adding params, prefer short, descriptive keys and document them in
  content or config comments if they are non-obvious.

## Assets, CSS, and JS

- Add custom CSS in `assets/` and wire it via Hugo Pipes or theme params.
- Keep static files in `static/` (images, icons, CNAME).
- Prefer file names in kebab-case and lowercase.
- If introducing JS, prefer ES modules and keep scripts small and scoped.
- Avoid introducing build tooling unless absolutely necessary; Hugo Pipes is
  preferred for CSS/JS processing.

## Naming Conventions

- Files: kebab-case (`my-post.md`, `cribarth-music-player.md`).
- Sections: short, descriptive slugs (`posts`, `projects`).
- Images: descriptive, lowercase, kebab-case.
- CSS/JS assets: short names, kebab-case, avoid spaces.

## Git and Deployment

- Deployment is via GitHub Actions (`.github/workflows/gh-pages.yml`).
- `./publish.sh` builds the site, stages all changes, commits, and pushes.
- Avoid committing `public/` unless a workflow explicitly requires it.
- Keep commits focused on content/config changes; avoid mixing with theme edits.

## Error Handling and Validation

- Build errors should be resolved by fixing content/config, not by editing
  generated files.
- If `hugo` fails, inspect front matter syntax and shortcode usage first.
- Keep `public/` and `resources/` out of edits and reviews.

## Safe Editing Guidelines

- Treat `themes/ananke/` as vendored code. Prefer overrides in `layouts/` or
  config changes in `hugo.toml`.
- Keep `publish.sh` behavior in mind if you update it; it stages all changes.
- Do not commit generated output unless the workflow explicitly requires it.
- If you need to customize the theme, try a layout or partial override first.
- Preserve existing formatting in content files to avoid noisy diffs.

## Helpful References

- Hugo docs: https://gohugo.io/documentation/
- Project workflow notes: `docs/workflow.md`
