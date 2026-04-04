# Phase 2: Sports & Civilization Essay

## Context

First essay in the deep-research workflow. The thesis: the evolution of sports from Roman gladiatorial games to today's global industry can serve as a quantifiable metric for societal advancement — measured through revenue, viewership, participation ratios, and diversity of sports.

Monte's preferred structure:
1. Make the hypothesis/claim
2. Introduce both eras broadly
3. Deep dive into the modern era with data
4. Deep dive into the Roman era on the same metrics
5. Draw parallels on shared metrics
6. Make a case based on findings

**Target:** ~2,000 words, expandable. Light theme charts. Manual Substack publish.

---

## Research Strategy

Start with **existing academic comparisons** (what's already been studied?), then fill gaps with primary data. Each step produces committed, reviewable output.

### Shared Metrics Framework

These are the dimensions we'll compare across both eras:

| Metric | What we're measuring |
|--------|---------------------|
| **Economic scale** | Total spending/revenue, as % of GDP/state budget |
| **Spectator reach** | Attendance + broadcast; per-event and annual |
| **Diversity** | Number of distinct sports/spectacle types |
| **Participation ratio** | Performers/athletes vs. spectators |
| **Geographic spread** | How many regions/countries had organized sports |
| **Funding model** | Who pays — state, commercial, individual |

---

## Steps

### Step 1: Academic Prior Art 🔬
**Goal:** Find existing scholarship comparing ancient and modern sports economics. Process what exists, identify gaps in the literature.

**Search targets:**
- Academic papers comparing Roman games to modern sports
- Books on gladiatorial economics (e.g., "The Gladiators" by Fik Meijer, Hopkins & Beard "The Colosseum")
- Sports economics survey papers that include historical context
- Any quantitative comparisons already published

**Output:**
- `data/sources.md` — annotated entries for each source found
- Summary to Monte on Telegram: what exists, what doesn't, what gaps we need to fill
- Commit: `research: academic prior art survey`

**Review point:** Monte reviews sources, decides which gaps to prioritize.

---

### Step 2: Modern Era Data 📊
**Goal:** Hard numbers on today's global sports landscape.

**Data to collect:**
- Global sports market size (2024-2025)
- Top 10-15 leagues by annual revenue (NFL, Premier League, NBA, La Liga, MLB, Bundesliga, Serie A, IPL, NHL, UFC, F1, etc.)
- Number of recognized sports (Olympic + non-Olympic)
- FIFA World Cup / Super Bowl / Olympics viewership
- Global sports participation estimates
- Revenue breakdown: broadcast vs. sponsorship vs. ticketing vs. merch

**Output:**
- `data/sources.md` — updated with modern data sources
- `data/modern-sports.csv` — structured data table
- Commit: `research: modern era sports data`

**Review point:** Monte reviews the numbers, flags anything surprising or missing.

---

### Step 3: Roman Era Data 🏛️
**Goal:** Best available estimates for gladiatorial/spectacle economics.

**Data to collect:**
- Cost of staging games (per event, annual state spending)
- Games spending as % of Roman state budget
- Amphitheater data: how many existed, capacity, geographic distribution
- Event frequency (how many days/year of games at peak empire)
- Number of gladiators in the empire (estimates)
- Types of spectacles (gladiatorial, venationes, chariot racing, athletic, naumachia)
- Spectator counts (Colosseum 50K, Circus Maximus 250K, provincial arenas)

**Output:**
- `data/sources.md` — updated with Roman-era sources
- `data/roman-sports.csv` — structured estimates with confidence notes
- Commit: `research: roman era spectacle data`

**Review point:** Monte reviews. Key question: do we have enough comparable data to make the parallel work?

---

### Step 4: First Draft — Structure + Narrative 📝
**Goal:** Write the essay skeleton with data woven in.

**Sections:**
1. **The Claim** — hypothesis in 2-3 paragraphs
2. **Two Eras, One Impulse** — brief intro to both
3. **The Modern Colosseum** — present-day data deep dive
4. **Blood and Bread** — Roman era deep dive on same metrics
5. **The Parallel** — side-by-side comparison with charts
6. **What the Numbers Say** — findings, whether the hypothesis holds

**Output:**
- `DRAFT.md` updated with full structure and prose
- Commit: `draft: first complete draft`

**Review point:** Monte reads the full draft, steers tone/depth/direction.

---

### Step 5: Charts 📈
**Goal:** 2-4 clean visualizations that make the comparison tangible.

**Planned charts:**
1. **Modern sports league revenues** — horizontal bar chart, top 10-15 leagues
2. **Spectator scale comparison** — Roman peak vs. modern peak (grouped bar or side-by-side)
3. **Sports diversity over time** — timeline showing number of organized sports from antiquity to present
4. **Participation ratio** — Roman gladiators-to-spectators vs. modern athletes-to-viewers

**Output:**
- PNGs in `charts/`
- Charts referenced in `DRAFT.md`
- Commit: `chart: essay visualizations`

**Review point:** Monte reviews charts for clarity and style.

---

### Step 6: Polish + Publish 🚀
**Goal:** Final edit pass, then prepare for Substack.

**Tasks:**
- Tighten prose to ~2,000 words
- Ensure every data point has a source citation
- Strip research notes
- Copy DRAFT.md → FINAL.md
- Format for Substack copy-paste
- Send to Monte for final approval
- Monte publishes to Substack
- Update meta.json with publish URL

**Output:**
- `FINAL.md`
- Updated `meta.json`
- Commit: `publish: sports and civilization`

---

## Acceptance Criteria

1. `data/sources.md` has 10+ annotated sources across both eras
2. At least one structured CSV per era with comparable metrics
3. `DRAFT.md` is a complete ~2,000 word essay with data citations
4. 2-4 charts generated and embedded in the draft
5. `FINAL.md` exists and is Substack-ready
6. Every data point traces back to a cited source
7. Monte has reviewed and approved at each step boundary

## Open Questions

None — we'll discover them during Step 1 (academic prior art) and adjust.
