---
version: 1
slug: "todo-html"
primary_target: "todo.html"
related_targets: []
---

# Surface: todo.html (giriş + yapılacaklar listesi)

Mode: Operate. Audience: public users keeping a personal list, desktop tab open all day and quick phone entries. Constraints: single HTML file, Turkish copy, every existing function kept (auth + 6-digit code, add, toggle, double-click edit, delete, drag reorder, filters, clear done, counters), light/dark follows system.

Chosen direction: Yaprak Takvim (IMPECCABLE'S PICK). Memorable moment: clearing done tasks tears them off the leaf.

## Direction contract

THESIS: The list lives on today's leaf of a Turkish tear-off wall calendar; it refuses the floating centered card on a neutral grey ground.

OWN-WORLD: Board green field (#0f5b45), white leaf, calendar red (#e0261b) month band and Sunday numerals, ink black; Barlow Condensed 800 for date, month, weekday and counts, Barlow for UI text; square checkboxes, hard 2px ink rules, dashed tear line.

STORY: The visitor sees today's date and how much is left, types a task, ticks it, then tears the finished ones off.

FIRST VIEWPORT: Green bar with name and account; a clipped leaf: left 400px day column (red month band, 300px numeral, weekday, kaldı/bitti/yılın günü), right sheet with heading, add field + red Ekle, filter tabs, task rows, dashed tear line with "Bitenleri kopar" at the foot. Phone: day column collapses to a band above the sheet.

FORM: Grounded candidate 1 of 7 (tear-off wall calendar), seed:eadba43aa6158709.

FINISH: unreviewed and undocumented is unfinished; this build ends with the finish review, the verdict, DESIGN.md, and every shipping raster carrying its provenance

Signature interaction: "Bitenleri kopar" peels finished rows up and away like a torn leaf (once, ~420ms, exponential ease-out), instant under reduced motion. Sunday numerals print red, as on the real calendar.
