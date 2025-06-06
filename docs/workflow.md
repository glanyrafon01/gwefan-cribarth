# Hugo Publishing Workflow – Gwefan Cribarth

This document explains how to create, edit, preview, and publish content for the
Hugo-based static website hosted at https://gwefan.cribarth.cymru.

---

## 🛠 Project Structure

- `content/` – Markdown files for posts and pages
- `themes/ananke/` – Site theme, added via Git submodule
- `hugo.toml` – Main configuration file
- `static/CNAME` – Contains custom domain name
- `public/` – Output folder (auto-generated by Hugo)
- `.github/workflows/gh-pages.yml` – GitHub Actions deployment

---

## ✍️ Writing Content

1. Open the project in VS Code:

   ```bash
   code ~/Projects/gwefan-cribarth
   ```

2. Create a new post:

   ```bash
   hugo new posts/my-post.md
   ```

3. Edit the file in `content/posts/` and ensure this front matter:

   ```yaml
   ---
   title: 'My Post'
   date: YYYY-MM-DD
   draft: false
   ---
   ```

4. Save and preview with:
   ```bash
   hugo server
   ```
   Visit: `http://localhost:1313`

---

## 🚀 Publishing Workflow

1. Ensure content is saved and committed:

   ```bash
   git add .
   git commit -m "Update content"
   git push
   ```

2. GitHub Actions will:

   - Build the site with Hugo
   - Deploy output (`public/`) to `gh-pages` branch
   - Serve the site at: https://gwefan.cribarth.cymru

3. This is automated at ./publish

---

## 🌐 Custom Domain

- Managed via `static/CNAME` and Cloudflare DNS
- CNAME: `gwefan.cribarth.cymru → glanyrafon01.github.io`
- GitHub Pages set to serve from `gh-pages` branch, root folder

---

## 🧩 Theme and Config

- Theme: Ananke (via submodule in `themes/ananke`)
- Config file: `hugo.toml`
  - Includes: `baseURL`, `title`, `languageCode`, `theme`

---

## 🔁 Common Commands

```bash
hugo                  # Build site
hugo server           # Local preview
git add .             # Stage changes
git commit -m "..."   # Commit
git push              # Deploy via GitHub Actions
```

---

For support, check the Hugo docs: https://gohugo.io/documentation/
