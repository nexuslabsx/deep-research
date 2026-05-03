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

## Phases

### Phase 1: Railroads & the American Frontier
- This is the clear next essay in the queue: Part 1 of the series and the historical foundation for the space comparison
- Turn the outline into a full draft with verified numbers on railroad mileage, land grants, capital formation, labor, and Fogel's social-savings argument
- Build the first chart set around infrastructure buildout, the government's bet, and the major second-order effects

### Phase 2: Space Industry 2026
- Finish the current-state landscape essay after the railroad piece is in shape
- Focus on the cost curve, SpaceX dominance, lunar return, the broader ecosystem, and the governance gap
- Make it the modern counterpart that Part 3 will eventually synthesize

---

## Backlog

- **The Beginning of the Beginning** — Part 3 bridge essay tying railroads to space. Best written after Parts 1 and 2 are solid
- **Substack integration** — API-based publishing. Worth building after 2-3 manual publishes
- **Essay index page** — if we hit 5+ essays, build a simple browse page (Next.js or static)
- **Cross-essay datasets** — merge facts.csv files across essays for a master research database

---

*Updated: 2026-05-03*
