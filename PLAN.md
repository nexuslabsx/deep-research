# Deep Research — Plan

Long-form research essays by Monte + Ash. Brainstorm → research → draft → publish → open-source.

---

## Vision

A growing library of data-backed essays on topics Monte is curious about. Each essay ships with a structured dataset (facts.csv) that other researchers and AI agents can reuse. The process itself is a repeatable skill.

---

## Where state lives

This file is the strategic roadmap (Phases + Backlog). Day-to-day state lives elsewhere:

- [`README.md`](README.md) — essay index with status icons
- `essays/<slug>/STATUS.md` — per-essay tracker (sources, charts, sections, follow-ups)
- `essays/<slug>/meta.json` — coarse metadata (status, dates, tags)
- Git history — what shipped, when

---

## Active

- **Phase 1 (in progress):** [Railroads & the American Frontier](essays/railroads-and-the-american-frontier/STATUS.md) — research/charts ongoing

## Queued

- **Phase 2:** [Space Industry 2026](essays/space-industry-2026/) — modern counterpart to Part 1
- **Phase 3:** [The Beginning of the Beginning](essays/beginning-of-the-beginning/) — bridge essay synthesizing Parts 1 + 2

---

## Backlog

- **The Beginning of the Beginning** — Part 3 bridge essay tying railroads to space. Best written after Parts 1 and 2 are solid
- **Substack integration** — API-based publishing. Worth building after 2-3 manual publishes
- **Essay index page** — if we hit 5+ essays, build a simple browse page (Next.js or static)
- **Cross-essay datasets** — merge facts.csv files across essays for a master research database

---

*Updated: 2026-05-03*
