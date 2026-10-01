# 4EOS Branding

The 4EOS brand system, packaged for people and for AI agents.

| File | What it is |
|------|------------|
| `4EOS-Brand-Styling-SKILL.md` | The brand guide itself. Source of truth for every value in this repo. |
| `index.html` | Visual reference page: swatches, type scale, component specimens, logo rules. Open it in a browser. Self-contained. |
| `tokens.css` | The same values as CSS custom properties, for web projects. |
| `assets/` | Official brand logo assets: WebP, PNG, transparent, square mark, and mark-only. |
| `4eos-branding.skill` | The guide packaged as an agent skill (zip). Install this into your agent. |
| `repack.sh` | Rebuilds `4eos-branding.skill` after edits to the SKILL.md. |
| `templates/` | Ready-to-use starters: Word, PowerPoint, print letterhead, web page. |

## Templates

| File | Use it for |
|------|------------|
| `templates/4EOS-Document-Template.dotx` | New Word documents. Double-click to start an untitled doc with brand styles (Bahnschrift headings, Calibri body, letterhead header and footer). |
| `templates/4EOS-Document-Template.docx` | Same content as the .dotx, for previewing the styles. |
| `templates/4EOS-Presentation-Template.potx` | New PowerPoint decks. Title slide (navy, yellow bottom bar) plus a content slide. |
| `templates/4EOS-Presentation-Template.pptx` | Same content as the .potx, for previewing. |
| `templates/4EOS-Letterhead-Print.html` | Letters and one-off PDFs. Edit the copy, then Print > Save as PDF in the browser. Letterhead and footer repeat on every page. |
| `templates/4EOS-Letterhead-Sample.pdf` | What the letterhead looks like as a finished PDF. |
| `templates/4EOS-Web-Page-Template.html` | Client-facing web pages. Self-contained starter with the brand nav bar, type scale, and pill component. |
| `templates/build_office_templates.py` | Regenerates the Word and PowerPoint files. Needs `python-docx`, `python-pptx`, and `pillow` in a venv; reads the logo from `assets/4eos_original_logo.png`. |

## Logo assets

All logos live in `assets/` and are served from this repo (no external dependency). Use the `raw.githubusercontent.com` URL for hotlinking, or the GitHub Pages URL on the rendered guide.

| Asset | File | Use it for |
|-------|------|------------|
| Full logo (WebP) | `assets/4eos_original_logo.webp` | Web pages, apps, anything modern. Smallest file. |
| Full logo (PNG) | `assets/4eos_original_logo.png` | Office docs, print, anything that rejects WebP. |
| Full logo (transparent PNG) | `assets/4eos_logo_tp.png` | Overlays on approved backgrounds. |
| Square mark | `assets/4eos_logo_square.png` | Avatars, app icons, square slots. |
| Mark only (no wordmark) | `assets/4eos_logo_no_words.png` | Tight spaces, favicons, watermarks. |

Raw URL pattern: `https://raw.githubusercontent.com/4EOS/branding/main/assets/<file>`

## Install the skill

**Hermes Agent:**
```bash
hermes skills install https://raw.githubusercontent.com/4EOS/branding/main/4EOS-Brand-Styling-SKILL.md
```

**Claude Code / MCP:**
```bash
curl -L https://raw.githubusercontent.com/4EOS/branding/main/4eos-branding.skill -o 4eos-branding.skill
claude mcp add-skill ./4eos-branding.skill
```

## Edit the guide

1. Edit `4EOS-Brand-Styling-SKILL.md`. Nothing else is hand-maintained.
2. Run `./repack.sh` to regenerate `4eos-branding.skill`.
3. Update `index.html`, `tokens.css`, and `templates/build_office_templates.py` if you changed a value they carry, then regenerate the Office templates.
4. Commit all four together. The zip is a build artifact; do not edit it by hand.

## License

4EOS internal use only. Contact Systems Engineering for asset requests.
