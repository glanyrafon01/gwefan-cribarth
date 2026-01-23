# Bilingual Plan (Welsh and English)

## Goal
- Add a minimum viable Welsh and English setup without redesigning the theme.
- Keep current content and URLs stable where possible.

## Recommended Minimum Setup
- Use Hugo multilingual configuration in `hugo.toml` with two languages.
- Keep English as the default, add Welsh as the secondary language.
- Store language-specific content under language folders to avoid collisions.

## Suggested Configuration Shape
- Add `defaultContentLanguage` and `defaultContentLanguageInSubdir`.
- Define `[languages.en]` and `[languages.cy]` with names, weights, and content directories.
- Localize menu entries under each language.

## Content Structure Steps
- Move existing content into `content/en/`.
- Create Welsh equivalents in `content/cy/` (start with key landing pages).
- Add translated `_index.md` files for sections (`posts`, `projects`).

## Theme and i18n Considerations
- Ananke supports Hugo i18n; add `i18n/*.toml` entries only when UI strings need translation.
- Avoid theme edits; prefer configuration and content changes first.

## Rollout Steps
1. Update `hugo.toml` with language definitions and menus.
2. Move existing content into the English content directory.
3. Add Welsh section indexes and one or two key pages.
4. Run `hugo server` and verify language switching and menu links.
5. Expand Welsh content incrementally.

## Sources to Inspect Before Implementing
- `hugo.toml`
- `content/**`
- `themes/ananke/README.md`
- `themes/ananke/i18n/*` (if present)

## Assumptions and Uncertainties
- Default language choice is assumed to be English; this can be flipped.
- Language code for Welsh is assumed to be `cy` or `cy-gb` depending on preference.
- URL structure depends on `defaultContentLanguageInSubdir` and should be confirmed.
- The site may require menu and taxonomy translation if bilingual navigation is desired.
