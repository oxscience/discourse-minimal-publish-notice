# Discourse Minimal Publish Notice

**Replaces the default Discourse "Published Page" banner with a clean, minimal badge.**

When a Discourse topic is published as a public page, the default notice takes up a lot of space. This theme component replaces it with a small globe icon + "public" link next to the topic title.

## Before / After

- **Before**: Large banner with full URL and explanation text
- **After**: Small `🌐 public` badge inline with the topic title

## Features

- Detects published page notice automatically
- Extracts the public `/pub/` URL
- Renders a minimal clickable badge with globe icon
- Inserted next to the topic title — no layout shift
- Falls back gracefully if notice structure changes

## Installation

Install as a Discourse theme component:

1. Go to **Admin → Customize → Themes**
2. Click **Install** → **From a git repository**
3. Enter: `https://github.com/oxscience/discourse-minimal-publish-notice.git`
4. Add the component to your active theme

## Requirements

- Discourse 2.7.0+

## License

MIT
