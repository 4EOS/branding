---
name: 4eos-brand-guidelines
description: Applies 4EOS's official brand colors and typography to any artifact that may benefit from the company's look-and-feel. Use it when brand colors or style guidelines, visual formatting, or company design standards apply — including client-facing documents, internal runbooks, proposals, incident reports, portal UIs, and presentations.
license: 4EOS internal use only. Contact Systems Engineering for asset requests.
---

# 4EOS Brand Styling

## Overview

To access 4EOS's official brand identity and style resources, use this skill.

**Keywords**: branding, corporate identity, visual identity, post-processing, styling, brand colors, typography, 4EOS brand, visual formatting, visual design, MSP, client-facing, proposals, runbooks, incident reports

## Brand Guidelines

### Colors

**Core Brand Colors:**

| Name            | Hex       | Role                                      |
|-----------------|-----------|-------------------------------------------|
| Primary Navy    | `#003D6C` | H1 headers, primary accent, navbar backgrounds |
| Secondary Blue  | `#006699` | H2 subheadings, links, accent 2           |
| Accent Yellow   | `#DAAA00` | Emphasis, UI highlights, CTA, charts, section labels |
| Dark Base       | `#1C2430` | Body text, page/dark backgrounds          |

**Extended Palette:**

| Name        | Hex       | Role                                         |
|-------------|-----------|----------------------------------------------|
| Mid Gray    | `#4A6078` | Supporting text, captions on white, table borders |
| Light Blue  | `#E8EFF5` | Light backgrounds, alternating rows          |
| White       | `#FFFFFF` | Card backgrounds, on-white document panels   |

**Interactive Blue Tints (on dark backgrounds):**

| Level    | Hex       | Usage              |
|----------|-----------|--------------------|
| H1 tint  | `#4A9CC4` | H1 on dark         |
| H2 tint  | `#5BB8D4` | H2 on dark         |
| H3 tint  | `#7EC8E3` | H3 on dark, code highlights |

### Typography

**Primary Font Stack:**

| Role              | Font                          | Fallback             |
|-------------------|-------------------------------|----------------------|
| Headings (H1–H3)  | Bahnschrift                   | Arial Narrow, sans-serif |
| Body & UI         | Calibri / Calibri Body        | Segoe UI, sans-serif |
| Alternative (all) | Segoe UI                      | Arial, sans-serif    |

**Note**: Bahnschrift and Calibri are pre-installed on Windows systems. Segoe UI is the approved fallback in environments where Bahnschrift is unavailable.

### Type Scale

| Level    | Font              | Weight   | Size      | Color (dark bg) | Color (white bg) |
|----------|-------------------|----------|-----------|-----------------|------------------|
| H1       | Bahnschrift       | Bold     | 26–28pt   | `#4A9CC4`       | `#003D6C`        |
| H2       | Bahnschrift       | SemiBold | 20–22pt   | `#5BB8D4`       | `#006699`        |
| H3       | Bahnschrift       | SemiBold | 14–16pt   | `#7EC8E3`       | `#003D6C`        |
| Body     | Calibri           | Regular  | 11–12pt   | `rgba(255,255,255,0.82)` | `#1C2430` |
| Emphasis | Calibri           | SemiBold | 11–12pt   | `rgba(255,255,255,0.9)`  | `#1C2430` |
| Caption  | Calibri           | Regular  | 10pt min  | `rgba(255,255,255,0.45)` | `#4A6078` |
| Label    | Calibri           | Regular  | 10pt      | `#DAAA00` (uppercase, tracked) | `#4A6078` |

### Logo

- **Official logo URL**: `https://raw.githubusercontent.com/4EOS/deployment-assets/refs/heads/main/4eos_original_logo.webp`
- Minimum display height: 38px (UI), 72px (headers/print)
- Always display on navy (`#003D6C`) or white (`#FFFFFF`) backgrounds
- Never place logo on yellow or mid-gray backgrounds

---

## Usage Context

### Dark Theme (Default)
- Background: `#1C2430` (Dark Base)
- Header/nav bar: `#003D6C` (Primary Navy)
- Bottom accent border on header: 4px solid `#DAAA00`
- Section labels: `#DAAA00`, uppercase, letter-spacing `0.2em`
- Cards/panels: white or `rgba(255,255,255,0.05)` on dark

### Light / Document / Print Theme
- Background: `#FFFFFF`
- H1: `#003D6C`, H2: `#006699`, H3: `#003D6C`
- Body text: `#1C2430`
- Captions: `#4A6078`

### UI Components
- **Navigation bar**: `#003D6C` background, white links, active link underlined in `#DAAA00`
- **Footer/stat bar**: `#003D6C` background, primary stats in white, secondary in `#006699`, alert values in `#DAAA00`
- **Pills / badges**: `#DAAA00` background, `#003D6C` text, uppercase, bold, tight letter-spacing
- **Code snippets**: `rgba(0,102,153,0.25)` background, `#7EC8E3` text

---

## Word / PowerPoint Theme Mapping

| Theme Slot     | Value                | Role                            |
|----------------|----------------------|---------------------------------|
| Heading Font   | Bahnschrift          | H1–H3                           |
| Body Font      | Calibri / Calibri Body | Paragraphs, labels            |
| Text/BG Dark 1 | `#1C2430`            | Primary text, dark background   |
| Accent 1       | `#003D6C`            | H1, primary navy                |
| Accent 2       | `#006699`            | H2, links, subheadings          |
| Accent 3       | `#DAAA00`            | Emphasis, charts, CTA           |

---

## Application Rules

### When creating HTML/React artifacts
1. Import or define CSS variables at `:root` level:
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
2. Use `font-family: 'Bahnschrift', 'Arial Narrow', sans-serif` for all headings
3. Use `font-family: 'Calibri', 'Calibri Body', sans-serif` for all body text
4. Dark-themed pages: `background: var(--dark)`, `color: var(--white)`
5. Section labels: `color: var(--yellow)`, uppercase, `letter-spacing: 0.2em`

### When creating PPTX/DOCX files
1. Apply Bahnschrift to all title and heading placeholders
2. Apply Calibri to all body/content placeholders
3. Title slide background: `#003D6C` (navy) with bottom border in `#DAAA00`
4. Content slides: white background, navy/blue headings
5. Accent shapes and callout boxes: `#DAAA00` fill or stroke
6. Footer text: `#4A6078` (mid gray), Calibri, 10pt

### Do's and Don'ts
- ✅ Use navy, blue, yellow, and dark base as the core four colors
- ✅ Use Bahnschrift for headings; Calibri for body
- ✅ Use yellow `#DAAA00` for emphasis, CTAs, highlights, and section labels
- ✅ Use Segoe UI as fallback when Bahnschrift is unavailable
- ❌ Do not use arbitrary accent colors outside the defined palette
- ❌ Do not place yellow text on white backgrounds (contrast failure)
- ❌ Do not use serif fonts — 4EOS identity is entirely sans-serif
- ❌ Do not stretch or recolor the logo

---

## Asset References

| Asset             | URL / Value                                                                                     |
|-------------------|-------------------------------------------------------------------------------------------------|
| 4EOS Logo (webp)  | `https://raw.githubusercontent.com/4EOS/deployment-assets/refs/heads/main/4eos_original_logo.webp` |
| Brand Guide Doc   | 4EOS Brand Guide v1.0 · Revised March 2026                                                      |
| Contact           | Systems Engineering team for logo files and template requests                                   |
