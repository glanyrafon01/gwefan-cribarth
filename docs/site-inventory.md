# Site Inventory

## Purpose
- Summarize the current Hugo setup and how the site is built and deployed.
- Document theme usage and key files that shape content and configuration.

## Current Hugo Setup
- Hugo config: `hugo.toml`.
- Site metadata: base URL, title, theme, language code, and main menu.
- Content lives under `content/` with posts in `content/posts/` and projects in `content/projects/`.
- No custom `layouts/` or `assets/` overrides are present.

## Theme Usage
- Theme is Ananke (`theme = "ananke"` in `hugo.toml`).
- Theme config specifies a minimum Hugo version in `themes/ananke/config/_default/hugo.toml`.
- Theme documentation is in `themes/ananke/README.md`.

## Build and Preview Workflow
- Local preview: `hugo server` (default localhost:1313).
- Production build: `hugo` or `hugo --minify`.
- Output directory: `public/` (generated).

## Deploy Workflow
- GitHub Actions workflow: `.github/workflows/gh-pages.yml`.
- On push to `main`, the workflow builds with Hugo and deploys `public/` to GitHub Pages.
- `publish.sh` builds, stages, commits, and pushes changes.

## Key Files and Directories
- `hugo.toml`: site configuration.
- `content/`: posts, projects, and section pages.
- `static/CNAME`: custom domain for GitHub Pages.
- `.github/workflows/gh-pages.yml`: deployment automation.
- `publish.sh`: local publish helper.
- `themes/ananke/`: theme sources and documentation.

## Sources Consulted
- `hugo.toml`
- `docs/workflow.md`
- `.github/workflows/gh-pages.yml`
- `publish.sh`
- `themes/ananke/config/_default/hugo.toml`
- `themes/ananke/README.md`
- `content/posts/welcome.md`
- `content/projects/_index.md`
- `static/CNAME`

## Assumptions and Uncertainties
- It is unclear whether `themes/ananke/` is a submodule or a vendored copy; the workflow checks out submodules.
- No custom layouts or assets exist today, but future overrides would live in `layouts/` or `assets/`.
