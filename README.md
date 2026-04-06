# Deep Research

Long-form research essays by [Monte](https://twitter.com/montethakkar) + [Ash](https://github.com/ashokosnexus). Each essay lives in its own folder under `essays/` with drafts, data, charts, and a final published version.

Built as a collaboration between a human (Monte) and an AI agent (Ash) using the [deep-research workflow](specs/phase-1-repo-and-skill/spec.md): brainstorm on Telegram, research and draft incrementally, review via git commits, publish.

## Essays

### The Beginning of the Beginning (Series)

A three-part series exploring how transformative infrastructure reshapes civilization, from the American railroad to the space frontier.

| Part | Essay | Status | Topic |
|------|-------|--------|-------|
| 1 | [Railroads & the American Frontier](essays/railroads-and-the-american-frontier/) | 🔬 Research | How a transportation technology remade a continent and created the modern economy |
| 2 | [Space Industry 2026](essays/space-industry-2026/) | 🔬 Research | A snapshot of where we are: costs, companies, capabilities, and what's next |
| 3 | [The Beginning of the Beginning](essays/beginning-of-the-beginning/) | 📋 Planned | What the railroad era tells us about the space frontier |

### Standalone

| Essay | Status | Topic |
|-------|--------|-------|
| [Sports & Civilization](essays/sports-and-civilization/) | ✅ Final | Can we measure civilizational progress by how we play? |

## Open Data

The research data behind each essay is structured and reusable:

- **[facts.csv](essays/sports-and-civilization/data/facts.csv)** — 80+ structured data points comparing Roman and modern sports across shared metrics (economics, venues, diversity, participation, viewership)
- **[sources-roman.md](essays/sports-and-civilization/data/sources-roman.md)** — 16 annotated Roman-era sources
- **[sources-modern.md](essays/sports-and-civilization/data/sources-modern.md)** — 9 annotated modern-era sources
- **[sources-bridge.md](essays/sports-and-civilization/data/sources-bridge.md)** — 5 academic works spanning both eras

## Workflow

1. **Brainstorm** on Telegram — shape the thesis
2. **Research** — Ash gathers data, commits incrementally to `DRAFT.md`
3. **Draft** — Monte reads and steers, Ash refines
4. **Publish** — Final version to Substack, archived in repo

## Structure

```
essays/<topic>/
├── DRAFT.md          # Living draft
├── FINAL.md          # Published version
├── data/             # Sources, CSVs, raw data
│   └── sources.md    # Annotated bibliography
├── charts/           # Generated visualizations
└── meta.json         # Metadata + publish info
```
