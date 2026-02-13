# Look and Feel Backlog

## Goal
- Enhance the Ananke theme with professional UI improvements while maintaining bilingual support
- Prefer configuration and CSS customization over theme forking
- Ensure all changes work well with both Welsh and English content

## Backlog Items

### 🎨 Visual Design Improvements
1. **Add custom CSS for brand identity**
   - Change: Create `assets/css/custom.css` with Welsh-friendly typography and Cribarth branding
   - Test: Verify CSS loads and applies to both language versions
   - Includes: Font improvements, spacing adjustments, color scheme updates

2. **Enhance language switcher UI**
   - Change: Override language switcher partial in `layouts/partials/`
   - Test: Confirm switcher works and is visually prominent in both languages
   - Includes: Better visual hierarchy, language flags/icons, improved accessibility

3. **Improve typography for bilingual content**
   - Change: Set `params.body_classes` and add custom font stack in CSS
   - Test: Verify Welsh characters (ŵ, ŷ, etc.) display correctly
   - Includes: Better line height, improved readability for both languages

### 📱 Layout and Structure Enhancements
4. **Add hero sections to key pages**
   - Change: Add `featured_image` in front matter for homepage and project pages
   - Test: Confirm headers render properly with images in both languages
   - Includes: Responsive image handling, proper alt text in both languages

5. **Improve home page content hierarchy**
   - Change: Create/update `content/_index.md` with clear bilingual introduction
   - Test: Verify homepage has strong message in both Welsh and English
   - Includes: Featured content sections, better visual flow

6. **Enhance mobile navigation**
   - Change: Override header partial for better mobile menu
   - Test: Confirm mobile menu works well on all devices
   - Includes: Better touch targets, improved mobile UX

### 🔍 Content Presentation Improvements
7. **Add short summaries for all listings**
   - Change: Add `description` or `summary` in post/project front matter
   - Test: Check list pages for proper previews in both languages
   - Includes: Consistent summary length, proper bilingual summaries

8. **Improve header contrast and readability**
   - Change: Set `params.cover_dimming_class` and adjust CSS
   - Test: Confirm titles are readable over hero images
   - Includes: Better text overlay handling, improved contrast ratios

9. **Refine background and color scheme**
   - Change: Set `params.background_color_class` and update CSS variables
   - Test: Validate contrast meets WCAG AA standards
   - Includes: Professional color palette, proper contrast for accessibility

### 🚀 Advanced Enhancements (Future)
10. **Consider theme upgrade or replacement**
    - Research: Evaluate modern documentation-focused themes (PaperMod, Blowfish)
    - Test: Create test branch with alternative theme
    - Consider: Migration path, bilingual support, documentation features

11. **Add interactive elements**
    - Change: Add search functionality with bilingual support
    - Test: Verify search indexes both languages properly
    - Includes: Client-side search, proper language filtering

## Implementation Approach

### Phase 1: Foundation (Next 1-2 weeks)
- ✅ Complete bilingual content parity (DONE)
- [ ] Add custom CSS with basic improvements
- [ ] Enhance language switcher UI
- [ ] Improve typography and spacing

### Phase 2: Polish (2-4 weeks)
- [ ] Add hero images and improve homepage
- [ ] Enhance mobile navigation
- [ ] Add content summaries and metadata

### Phase 3: Advanced (Future)
- [ ] Evaluate theme alternatives
- [ ] Add interactive features
- [ ] Implement advanced bilingual UX patterns

## Sources to Inspect Before Implementing
- `hugo.toml` - Main configuration
- `content/**` - All content files
- `themes/ananke/README.md` - Theme documentation
- `assets/` - Custom assets directory
- `layouts/` - Template overrides
- `i18n/` - Translation files

## Assumptions and Uncertainties
- Visual direction should align with Cribarth brand identity
- All changes must maintain full bilingual support
- Theme customization should be minimal and maintainable
- No major redesign - evolutionary improvements preferred

## Success Criteria
- Improved visual hierarchy and professional appearance
- Better readability for both Welsh and English content
- Maintained bilingual functionality
- Clean, maintainable codebase
- Positive user feedback on UI improvements
