# 4EOS Brand Styling

## Overview
Use this skill to apply 4EOS's official brand identity and style to any document, presentation, UI component, or visual deliverable.

**Keywords:** 4EOS branding, corporate identity, visual identity, post-processing, styling, brand colors, typography, 4EOS brand, visual formatting, visual design, MSP branding, client-facing materials

---

## Brand Guidelines

### Colors

**Core Palette:**

| Name | Hex | Role |
|---|---|---|
| Primary Navy | `#003D6C` | H1, headers, primary accent, Accent 1 |
| Secondary Blue | `#006699` | H2, links, subheads, Accent 2 |
| Accent Yellow | `#DAAA00` | Emphasis, UI highlights, CTAs, charts, Accent 3 |
| Dark Base | `#1C2430` | Body text, dark backgrounds, Text/BG Dark 1 |
| Mid Gray | `#4A6078` | Secondary text, captions, muted labels |
| Light | `#E8EFF5` | Footer bars, light background panels |
| White | `#FFFFFF` | Document/print context, card bodies |

**On-Dark Heading Colors (screen/UI context):**

| Level | Hex | Notes |
|---|---|---|
| H1 on dark | `#4A9CC4` | Lighter navy for dark background legibility |
| H2 on dark | `#5BB8D4` | Mid blue |
| H3 on dark | `#7EC8E3` | Light blue |

**On-White Heading Colors (document/print context):**

| Level | Hex |
|---|---|
| H1 on white | `#003D6C` (Primary Navy) |
| H2 on white | `#006699` (Secondary Blue) |
| H3 on white | `#003D6C` (Primary Navy) |

---

### Typography

**Heading Font:** Bahnschrift (fallback: Arial Narrow, then Arial)
**Body Font:** Calibri / Calibri Body (fallback: Segoe UI, then sans-serif)
**Alternative (when Bahnschrift unavailable):** Segoe UI Variable / Segoe UI for all levels

> Bahnschrift and Calibri are standard on Windows systems. For cross-platform environments, Segoe UI is the approved fallback.

---

### Type Scale

| Role | Font | Size | Weight | Color (on white) |
|---|---|---|---|---|
| H1 | Bahnschrift | 26–28pt | Bold (700) | `#003D6C` |
| H2 | Bahnschrift | 20–22pt | SemiBold (600) | `#006699` |
| H3 | Bahnschrift | 14–16pt | SemiBold (600) | `#003D6C` |
| Body | Calibri | 11–12pt | Regular (400) | `#1C2430` |
| Emphasis | Calibri | 11–12pt | SemiBold (600) | `#1C2430` |
| Caption / Label | Calibri | 10pt min | Regular (400) | `#4A6078` |
| Eyebrow / Tag | Calibri | 9.5–10pt | SemiBold (600), uppercase, tracked | `#006699` |

---

### Word / PowerPoint Theme Mapping

| Theme Slot | Value | Role |
|---|---|---|
| Heading Font | Bahnschrift | H1–H3 |
| Body Font | Calibri / Calibri Body | Paragraphs, labels |
| Text/BG Dark 1 | `#1C2430` | Primary text, dark backgrounds |
| Accent 1 | `#003D6C` | H1, primary navy |
| Accent 2 | `#006699` | H2, links, subheads |
| Accent 3 | `#DAAA00` | Emphasis, charts, CTAs |

---

## Features

### Smart Font Application

- Apply **Bahnschrift Bold** to H1 (26pt+)
- Apply **Bahnschrift SemiBold** to H2 (20–22pt) and H3 (14–16pt)
- Apply **Calibri Regular** to body text (11–12pt)
- Apply **Calibri SemiBold** to emphasis/bold inline text
- Apply **Calibri Regular** to captions (10pt, muted color)
- Fall back to Segoe UI for all levels if Bahnschrift is unavailable
- Fall back to Arial Narrow → Arial as a last resort for headings

### Text Styling

- H1 receives navy (`#003D6C` on white, `#4A9CC4` on dark)
- H2 receives blue (`#006699` on white, `#5BB8D4` on dark)
- H3 matches H1 color on white; `#7EC8E3` on dark
- Body text: `#1C2430` on white; `rgba(255,255,255,0.82)` on dark
- Captions: `#4A6078` on white; `rgba(255,255,255,0.45)` on dark
- Active/selected nav items and section labels use Accent Yellow `#DAAA00`
- Links use Secondary Blue `#006699`

### Shape and Accent Colors

- Non-text shapes, pills, stat highlights, and CTA elements use Accent Yellow `#DAAA00`
- UI borders, dividers, and rule lines use navy (`#003D6C`) or yellow at low opacity
- Footer/stat bars use Light background `#E8EFF5` with border `#D0DCE6`
- Highlight pills: Yellow background `#DAAA00` with navy text `#003D6C`, Bahnschrift Bold, uppercase

### Logo Usage

- Official logo asset: `https://raw.githubusercontent.com/4EOS/deployment-assets/refs/heads/main/4eos_original_logo.webp`
- Logo appears on navy `#003D6C` header backgrounds
- Minimum height: 38px in UI contexts; 72px in brand guide / header contexts
- Never place the logo on Accent Yellow or light gray without approval

---

## Technical Details

### Font Management

- Bahnschrift is bundled with Windows 10/11 — no installation required in Windows environments
- Calibri / Calibri Body is bundled with Microsoft Office and Windows
- For non-Windows environments (Linux, macOS), substitute Segoe UI Variable or fall back to Arial/sans-serif
- When generating PPTX via python-pptx, set theme heading font to `"Bahnschrift"` and body font to `"Calibri Body"`

### Color Application (python-pptx)

```python
from pptx.util import Pt
from pptx.dml.color import RGBColor

# Core palette
NAVY    = RGBColor(0x00, 0x3D, 0x6C)  # Primary Navy
BLUE    = RGBColor(0x00, 0x66, 0x99)  # Secondary Blue
YELLOW  = RGBColor(0xDA, 0xAA, 0x00)  # Accent Yellow
DARK    = RGBColor(0x1C, 0x24, 0x30)  # Dark Base
MID     = RGBColor(0x4A, 0x60, 0x78)  # Mid Gray
LIGHT   = RGBColor(0xE8, 0xEF, 0xF5)  # Light Panel
WHITE   = RGBColor(0xFF, 0xFF, 0xFF)  # White
```

### Color Application (CSS)

```css
:root {
  --navy:   #003D6C;
  --blue:   #006699;
  --yellow: #DAAA00;
  --dark:   #1C2430;
  --mid:    #4A6078;
  --light:  #E8EFF5;
  --white:  #FFFFFF;
}
```

---

## Usage Notes

- All client-facing deliverables (proposals, runbooks, incident reports, SOW documents) should use the on-white palette with Bahnschrift headings and Calibri body
- Internal dark-theme UI and portal mockups use the on-dark palette with lightened heading colors
- Do not substitute brand colors without approval from Systems Engineering
- For logo files or template requests, contact 4EOS Systems Engineering
- Brand Guide version: **v1.0** — Revised March 2026
