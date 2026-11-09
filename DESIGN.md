---
name: Yapılacaklar
description: A personal to-do list printed on today's leaf of a Turkish tear-off wall calendar.
colors:
  board-green: "#0f5b45"
  board-ink: "#ffffff"
  board-soft: "#cfe2db"
  leaf-white: "#ffffff"
  calendar-ink: "#141414"
  pencil-grey: "#5c5c5c"
  hairline: "#dadada"
  calendar-red: "#d4221a"
  action-red: "#d4221a"
  action-red-deep: "#b11a13"
  month-band: "#d4221a"
  binder-clip: "#1d1d1d"
  board-green-night: "#08281f"
  board-soft-night: "#a9c6bb"
  leaf-night: "#1a1c1b"
  calendar-ink-night: "#efeeea"
  pencil-grey-night: "#a6a9a7"
  hairline-night: "#343836"
  calendar-red-night: "#ff6a5e"
  month-band-night: "#c01f17"
  binder-clip-night: "#000000"
typography:
  display:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "300px"
    fontWeight: 800
    lineHeight: 0.9
    fontFeature: "lnum"
  headline:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "40px"
    fontWeight: 800
    lineHeight: 1
    letterSpacing: "0.12em"
  month:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "34px"
    fontWeight: 800
    lineHeight: 1
    letterSpacing: "0.1em"
  count:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "44px"
    fontWeight: 800
    lineHeight: 1
    fontFeature: "tnum"
  title:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "30px"
    fontWeight: 800
    lineHeight: 1.1
    letterSpacing: "0.08em"
  brand:
    fontFamily: "Barlow Condensed, Arial Narrow, sans-serif"
    fontSize: "24px"
    fontWeight: 800
    lineHeight: 1
    letterSpacing: "0.06em"
  task:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "20px"
    fontWeight: 400
    lineHeight: 1.45
  body:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "17px"
    fontWeight: 400
    lineHeight: 1.45
  button:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "18px"
    fontWeight: 700
  label:
    fontFamily: "Barlow, Segoe UI, system-ui, sans-serif"
    fontSize: "15px"
    fontWeight: 400
    lineHeight: 1.45
rounded:
  none: "0px"
  clip: "4px"
spacing:
  xs: "8px"
  sm: "12px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  sheet-y: "40px"
  sheet-x: "56px"
components:
  button-primary:
    backgroundColor: "{colors.action-red}"
    textColor: "{colors.board-ink}"
    typography: "{typography.button}"
    rounded: "{rounded.none}"
    padding: "0 28px"
    height: "52px"
  button-primary-hover:
    backgroundColor: "{colors.action-red-deep}"
  button-bar:
    backgroundColor: "transparent"
    textColor: "{colors.board-ink}"
    rounded: "{rounded.none}"
    padding: "6px 14px"
  button-bar-hover:
    backgroundColor: "{colors.board-ink}"
    textColor: "{colors.board-green}"
  input-field:
    backgroundColor: "{colors.leaf-white}"
    textColor: "{colors.calendar-ink}"
    rounded: "{rounded.none}"
    padding: "14px 16px"
  filter-tab:
    textColor: "{colors.pencil-grey}"
    padding: "0 0 10px"
  filter-tab-active:
    textColor: "{colors.calendar-ink}"
  task-row:
    backgroundColor: "{colors.leaf-white}"
    textColor: "{colors.calendar-ink}"
    typography: "{typography.task}"
    padding: "15px 0"
  checkbox:
    backgroundColor: "{colors.leaf-white}"
    rounded: "{rounded.none}"
    size: "24px"
  checkbox-checked:
    backgroundColor: "{colors.calendar-ink}"
  month-band:
    backgroundColor: "{colors.month-band}"
    textColor: "{colors.board-ink}"
    typography: "{typography.month}"
    padding: "18px 0"
  tear-action:
    textColor: "{colors.calendar-red}"
    padding: "6px 0"
---

# Design System: Yapılacaklar

## Overview

**Creative North Star: "Yaprak Takvim" (the tear-off wall calendar)**

The list lives on today's leaf of a Turkish tear-off wall calendar pinned to a green board. The page is not a floating card on a neutral grey ground: it is a white leaf with a black binder clip at its top edge, a red month band, an enormous condensed day numeral, the weekday spelled out beneath it, and a running count of what is left. The right side of the leaf is the sheet where tasks are written, ticked, and finally torn off along a dashed perforation.

The material vocabulary is printed paper: hard 2px ink rules, square checkboxes, square buttons, one dashed tear line, and red used the way a calendar printer uses it (month band, Sundays, the "done" count, and actions). Density is calm and generous, sized for a tab that stays open all day; task text runs at 20px so the list reads at a glance. All UI copy is Turkish; the condensed display face carries uppercase Turkish diacritics (Ş, İ, Ğ) cleanly and must keep doing so.

Light and dark follow the system. At night the board deepens, the leaf becomes charcoal, ink inverts to off-white, and the text red lightens; the month band and the action red stay deep so white type on them keeps its contrast.

**Key Characteristics:**
- Green board field, white leaf, calendar red, black ink: four materials, nothing else.
- Barlow Condensed 800 for everything printed on the calendar (date, month, weekday, counts, headings); Barlow for everything written by the user or the UI.
- Square everywhere; the binder clip is the only rounded object.
- Ink rules (2px solid) structure the leaf; one dashed rule marks where finished work tears off.
- Sundays print red, as on a real Turkish wall calendar.

## Colors

A printed-calendar palette: one saturated red against black ink on white paper, set on a deep board green.

### Primary
- **Calendar Red** (`calendar-red`): the printer's red. Sunday numeral and weekday, the "bitti" (done) count, the active filter underline, focus outlines, the text caret, selection, error notices, input focus border, the "Bitenleri kopar" action, and the delete icon on hover. In dark mode it lightens to `calendar-red-night` so red text stays legible on charcoal.
- **Action Red** (`action-red`, hover `action-red-deep`): the filled primary button. It shares Calendar Red's light-mode hex but is a separate token on purpose: it is fixed in both themes, because the dark theme's text red is too light to carry white bold 18px button text at 4.5:1. The value is a deliberate darkening of the original sketch red (#e0261b) for that contrast.
- **Month Band Red** (`month-band`, `month-band-night`): the solid band printing the month and year at the top of the day column. Deepens slightly in dark mode; always carries white text.

### Neutral
- **Board Green** (`board-green`, `board-green-night`): the page ground the leaf hangs on, and the top bar. Also the browser `theme-color`.
- **Board Ink / Board Soft** (`board-ink`, `board-soft`): white for the brand and bar button on the board; Board Soft for secondary text on the board (the signed-in email), the bar button border, and the scrollbar thumb.
- **Leaf White** (`leaf-white`, `leaf-night`): the calendar leaf, inputs, task rows, unchecked checkboxes.
- **Calendar Ink** (`calendar-ink`, `calendar-ink-night`): all primary text, the 2px rules, input borders, checkbox borders and checked fill, the dashed tear line.
- **Pencil Grey** (`pencil-grey`, `pencil-grey-night`): secondary text: count labels, inactive filters, placeholders, the hint line, done task text, the resting delete icon, text links.
- **Hairline** (`hairline`, `hairline-night`): the 1px divider between task rows, and nowhere else.
- **Binder Clip** (`binder-clip`, `binder-clip-night`): the clip bar across the top of the leaf.

### Named Rules
**The Printer's Red Rule.** Red marks what a calendar printer would mark (the month, Sundays, the done count) and what the user can act on. It never fills a large area other than the month band and the primary button.

**The Fixed Action Red Rule.** Filled red surfaces carrying white text use `action-red` / `month-band` in both themes. Never put white text on `calendar-red-night`.

## Typography

**Display Font:** Barlow Condensed 800 (with Arial Narrow, sans-serif); 600 is loaded but not yet used.
**Body Font:** Barlow 400 / 500 / 700 (with Segoe UI, system-ui, sans-serif)

**Character:** The condensed face is the calendar's printing: tall, heavy, tightly packed numerals and letter-spaced uppercase words. Barlow is its humanist sibling for handwriting-level content: task text, fields, buttons, and labels.

### Hierarchy
- **Display** (800, 300px, line-height 0.9, lining numerals): the day numeral only. 104px on phones.
- **Headline** (800, 40px, 0.12em tracking): the weekday under the numeral. 26px on phones.
- **Month** (800, 34px, 0.1em tracking): month and year inside the red band. 24px on phones.
- **Count** (800, 44px, tabular numerals): kaldı / bitti / yılın günü figures. 30px on phones.
- **Title** (800, 30px, 1.1, 0.08em tracking, uppercase): the sheet heading. 24px on phones.
- **Brand** (800, 24px, 0.06em tracking, uppercase): the wordmark in the green bar.
- **Task** (400, 20px): task row text. 18px on phones.
- **Body** (400, 17px, 1.45): base text, notices.
- **Button** (700, 18px): primary button labels. Inputs use 400 18px/1.3.
- **Label** (400, 15–16px): count labels, filter tabs (16px; 700 when active), the hint line (15px), links (16px).

### Named Rules
**The Printed vs. Written Rule.** If the calendar would print it (dates, month, weekday, counts, section headings), it is Barlow Condensed 800. If a person writes or operates it, it is Barlow.

**The Tabular Count Rule.** Every changing number (counts, filter tallies) uses tabular numerals so the figures never jitter as tasks change.

## Layout

The leaf is a two-column grid centred on the board: a 400px day column and a fluid sheet, max width 1120px (100% − 32px below that), minimum height min(792px, 100vh − 108px), with 24px above and 48px below. The 60px top bar aligns its content to the same 1120px edge. The day column is a vertical stack: month band at top, numeral 30px below it, weekday, and the counts pushed to the bottom (32px side and 28px bottom inset) above a 2px ink rule. The sheet is padded 40px / 56px / 32px; the add field and filters sit under the heading, the list fills the middle, and the tear line is pushed to the foot of the leaf with margin-top auto.

Rhythm is built from 8, 12, 16, 24, and 32px steps; inline gaps are 12px (add row, auth form) and 16–18px (bar, task rows), and filter tabs are spaced 28px apart.

**Phone (≤760px):** the day column collapses into a band above the sheet: the month band spans full width, the numeral (104px) sits left spanning two rows, and the weekday and counts stack to its right. The column's right rule becomes a 2px bottom rule. Sheet padding drops to 24px / 20px. Below 380px the "yılın günü" count is hidden.

## Elevation & Depth

Depth is physical and singular: one leaf hanging on one board. The leaf carries a single soft drop shadow; nothing on the leaf is elevated. Structure on the leaf comes from ink rules, not shadows.

### Shadow Vocabulary
- **Hanging leaf** (`box-shadow: 0 18px 40px -18px rgba(0, 0, 0, 0.55)`): the calendar leaf against the board. Used once.

### Named Rules
**The One Leaf Rule.** Only the leaf casts a shadow. Elements on the leaf are flat and separated by rules, hairlines, and the active filter's 4px red underline (an inset shadow used as a rule, not as depth).

## Shapes

Every edge is square (0 radius): buttons, inputs, checkboxes, the leaf itself. The single exception is the binder clip, a 220×22px bar with a 4px radius straddling the leaf's top edge (140×15px on phones). Lines come in three weights with fixed jobs: 2px solid ink for structure (column divider, count rule, filter baseline, input and checkbox borders), 1px hairline between task rows, and 2px dashed ink for perforation (the tear line, and a torn row's bottom edge during the tear).

## Components

### Buttons
Blunt and printed: a solid red block, no rounding, no shadow.
- **Shape:** square (0).
- **Primary:** action red fill, white 700 18px text, 0 28px padding (0 20px on phones), minimum height 52px. Full width in the auth form; beside the add field in the app.
- **Hover / Focus:** hover deepens to `action-red-deep`. Focus is the global 2px calendar-red outline at 2px offset. Disabled drops to 0.55 opacity.
- **Bar button:** transparent on the board with a 1.5px Board Soft border, white text, 6px 14px; hover inverts to a white fill with board-green text. Focus outline in the bar is white.
- **Text link:** pencil grey, underlined at 4px offset; hover to ink.

### Inputs / Fields
- **Style:** leaf fill, 2px solid ink border, square, 14px 16px padding, Barlow 18px. Placeholder in pencil grey.
- **Focus:** border turns calendar red plus a 1px inset red ring (no outline).
- **Code field:** the 6-digit confirmation code is set in Barlow Condensed 800 30px, centred, 0.3em tracking.
- **Inline edit:** editing a task swaps the text for a borderless field with a 2px red underline at the task size.

### Filter Tabs
- **Style:** text-only tabs, 16px pencil grey, with tabular counts, sitting on a 2px ink baseline, 28px apart.
- **Active:** ink, weight 700, with a 4px calendar-red underline (inset box-shadow) on the baseline.

### Task Rows
- **Style:** 20px task text, 18px gap, 15px vertical padding, 1px hairline below; grab cursor for drag reorder (dragging row at 0.4 opacity).
- **Checkbox:** 24px square, 2px ink border; checked fills ink with an inline SVG square-capped check (white on light, leaf-night on dark).
- **Done:** pencil-grey text with a 2px line-through.
- **Delete:** 36px hit area with an 18px inline SVG cross, hidden until row hover or focus (always visible on touch); red on hover.

### Notice
A status line under the heading: a 2px top rule and bold text, both calendar red for errors; ink and weight 500 for info.

### Day Column (signature)
The calendar itself: red month band ("KASIM 2026"), the 300px numeral, the weekday ("PAZARTESİ"), and counts separated from them by a 2px ink rule. Signed in, it shows kaldı (left), bitti (done, in red) and yılın günü (day of year); signed out, it shows yılın günü and kalan gün (days left in the year). On Sundays the numeral and weekday print in calendar red.

### Tear Line and "Bitenleri kopar" (signature interaction)
The sheet ends in a 2px dashed ink perforation carrying the hint text (15px pencil grey) and, when finished tasks exist, the "Bitenleri kopar" action in bold red text (underline on hover). Clearing tears the finished rows off: each row takes a 2px dashed ink bottom edge, lifts (translateY −22px, rotate −4deg from its top-left corner) and fades over 520ms on `cubic-bezier(0.16, 1, 0.3, 1)`. Its height is held through 55% of the animation, then collapses to zero so the rows below settle into place. Under reduced motion the rows disappear instantly.

## Do's and Don'ts

### Do:
- **Do** set every printed calendar element (date, month, weekday, counts, headings) in Barlow Condensed 800, and keep counts tabular.
- **Do** print Sunday's numeral and weekday in calendar red.
- **Do** use `action-red` (hover `action-red-deep`) for any filled button with white text, in both themes.
- **Do** structure the leaf with 2px solid ink rules and separate list rows with the 1px hairline.
- **Do** reserve the dashed 2px ink rule for perforation: the tear line and rows being torn off.
- **Do** collapse the day column into a band above the sheet at ≤760px.
- **Do** keep reduced motion instant for the tear and any future motion.
- **Do** write UI copy in Turkish, and check that condensed uppercase renders İ, Ş, Ğ correctly.

### Don't:
- **Don't** round corners on buttons, inputs, checkboxes, or the leaf; the binder clip's 4px radius is the only curve.
- **Don't** put white text on `calendar-red-night`; it is a text color only.
- **Don't** add shadows to anything on the leaf; only the leaf hangs.
- **Don't** float the list in a centred card on a neutral grey ground; it lives on the leaf on the green board.
- **Don't** spread red beyond the month band and primary button as a fill.
