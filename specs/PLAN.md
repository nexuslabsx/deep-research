# Deep Research — Plan

Long-form research essays by Monte + Ash. Brainstorm on Telegram, research and draft incrementally, publish and open-source.

**Repo:** [github.com/nexuslabsx/deep-research](https://github.com/nexuslabsx/deep-research) (public)

---

## Phases

### Phase 1: Repo + Skill Setup ✅ DONE
Set up the deep-research repo and the `deep-research` ash-core skill (7 intents: new, research, draft, chart, show, status, publish).

### Phase 2: First Essay — Sports & Civilization ✅ DONE
- 80+ structured data points in facts.csv
- 30 annotated sources across 3 files (roman, modern, bridge)
- 4 polished charts (branching, donut comparison, Olympic growth, league revenue)
- ~2,200 word essay, 2 revision rounds
- Repo open-sourced, posted on X
- Time: ~4 hours brainstorm-to-publish

### Phase 3: Next Essay — TBD
No topic selected yet. When ready, use the `deep-research` skill to kick off.

### Phase 4: Substack Integration (if needed)
API-based publishing to Substack. Only worth building after 2-3 manual publishes.

---

## Decisions

- **~2,000 words** target per essay (expandable per topic)
- **Light theme charts** — Inter font, 150 DPI, clean style
- **Manual Substack** for now
- **facts.csv** as the reusable data asset per essay
- **Sources split by era** when they get long (roman/modern/bridge)
- **Open source by default** — the data is the most valuable artifact

## Process (proven on essay #1)

1. Brainstorm thesis on Telegram
2. Research: academic prior art first, then era-specific deep dives
3. Structure findings into facts.csv (era, metric, value, unit, date, confidence, source_id, note)
4. Generate charts from the data
5. Draft with takeaway-first paragraphs, no em-dashes, year context for historical figures
6. Monte reviews and steers (tone, structure, depth)
7. Finalize: linked sources, FINAL.md, open-source repo
