# Look and Feel Backlog

## Goal
- Small, testable improvements that respect the existing Ananke theme.
- Prefer configuration and content changes over theme edits.

## Backlog Items
1. Add hero images to key pages
   - Change: add `featured_image` in front matter for the homepage and project pages.
   - Test: run `hugo server` and confirm headers render with images.
2. Set consistent typography classes
   - Change: set `params.body_classes` and `params.post_content_classes` in `hugo.toml`.
   - Test: verify body and post text styles on desktop and mobile.
3. Improve header contrast
   - Change: set `params.cover_dimming_class` to improve text readability.
   - Test: confirm titles are readable over hero images.
4. Refine background color
   - Change: set `params.background_color_class` to a non-default neutral.
   - Test: validate contrast against text and links.
5. Add short summaries for listings
   - Change: add `description` or `summary` in post/project front matter.
   - Test: check list pages for tighter previews.
6. Add a lightweight custom CSS file
   - Change: create `assets/ananke/css/custom.css` and register via `params.custom_css`.
   - Test: confirm the CSS is bundled and visible in production build.
7. Improve home page content hierarchy
   - Change: adjust `content/_index.md` or create if missing, with a clear intro and featured links.
   - Test: verify the homepage has a strong top-level message.

## Sources to Inspect Before Implementing
- `hugo.toml`
- `content/**`
- `themes/ananke/README.md`
- `assets/` and `layouts/` if created

## Assumptions and Uncertainties
- Visual direction is not yet defined; changes should stay close to Ananke defaults.
- No brand palette or imagery has been provided yet.
