---
name: deep-research
description: "Manage deep research essays — create new essays, update drafts, generate charts, prepare for publishing. Use when Monte says 'start a new research topic', 'new essay about X', 'update the draft', 'show me the draft', 'essay status', 'generate a chart', 'research X', or 'publish this essay'."
---

# Deep Research

Manage the lifecycle of long-form research essays: create, research, draft, chart, review, and publish.

## Paths

This skill lives **inside** the `deep-research` repo at `.claude/skills/deep-research/`. All paths below are relative to the repo root. Find it with `git rev-parse --show-toplevel` if you need an absolute path.

| Item | Path (relative to repo root) |
|------|------|
| **Essays** | `essays/` |
| **Templates** | `templates/` |
| **Chart style** | Read `references/chart-style.md` in this skill directory (`.claude/skills/deep-research/references/chart-style.md` from repo root) |

## Active Essay

To find the current essay, read `PLAN.md` § Active. Each entry points to that essay's `STATUS.md`. If Monte names a specific essay, use that one instead. If multiple essays are in progress and Monte hasn't named one, ask.

Per-essay state lives in `essays/<slug>/STATUS.md`. Read it on session resume.

## Intents

### 1. `new` — Start a new essay

**Triggers:** "start a new research topic", "new essay about X", "let's research X"

**Steps:**
1. Ask Monte for the topic and initial thesis (if not already provided)
2. Create the essay folder structure:
   ```
   essays/<slug>/
   ├── DRAFT.md
   ├── data/
   │   └── sources.md
   ├── charts/
   └── meta.json
   ```
3. Seed `DRAFT.md` with the thesis and a rough outline based on the brainstorm
4. Seed `meta.json`:
   ```json
   {
     "title": "<Title>",
     "subtitle": "<One-line thesis>",
     "status": "research",
     "created": "<YYYY-MM-DD>",
     "published": null,
     "substackUrl": null,
     "wordCountTarget": 2000,
     "tags": ["tag1", "tag2"]
   }
   ```
5. Seed `data/sources.md` with a header
6. Update `README.md` essay index table
7. Commit: `essay: create <title>`
8. Push

### 2. `research` — Gather data and sources

**Triggers:** "research X for the essay", "dig into the revenue numbers", "find data on Y"

**Steps:**
1. Use `web_search` and `web_fetch` to find relevant data
2. Append findings to `data/sources.md` with this format:
   ```markdown
   ## <Source Title>
   - **URL:** <url>
   - **Accessed:** <date>
   - **Key data:**
     - <bullet points of relevant facts/numbers>
   - **Relevance:** <one line on why this matters for the essay>
   ```
3. If structured data is found (tables, time series), save as CSV in `data/`
4. Optionally append key findings to `DRAFT.md` as research notes under a `## Research Notes` section at the bottom
5. Commit: `research: <what was researched>`
6. Push

**Important:** Always cite sources. Never fabricate data points. If a number can't be verified, flag it as "estimated" or "unverified" in the draft.

### 3. `draft` — Write or update the draft

**Triggers:** "update the draft", "write the section on X", "add this to the draft", "revise the intro"

**Steps:**
1. Read the current `DRAFT.md`
2. Make the requested changes — add new sections, revise existing ones, restructure
3. Keep `## Research Notes` at the bottom (working notes, not part of the final essay)
4. Commit with descriptive message: `draft: <what changed>` (e.g., `draft: add modern sports revenue section`)
5. Push

**Writing guidelines:**
- Target word count is in `meta.json` (~2,000 words unless specified otherwise)
- Write in a clear, engaging, data-informed style
- Weave in specific numbers and citations
- Reference charts by filename: `![caption](charts/filename.png)`
- Keep Monte's voice in mind — direct, curious, analytical

### 4. `chart` — Generate a visualization

**Triggers:** "generate a chart for X", "chart the revenue data", "visualize the comparison"

**Steps:**
1. Read `references/chart-style.md` for style requirements
2. Determine the chart type (bar, line, scatter, comparison) based on the data
3. Write and execute a Python matplotlib script via `exec`:
   - Use the style template from the reference
   - Save to `essays/<topic>/charts/<descriptive-name>.png`
4. Review the generated chart (read the image file to verify it looks right)
5. Reference the chart in `DRAFT.md` if not already there
6. Commit: `chart: <description>`
7. Push

**Chart naming:** Use descriptive kebab-case names like `global-sports-revenue-timeline.png` or `gladiator-vs-modern-economics.png`.

**When posting chart references in chat:** Always include the GitHub blob URL alongside, since chat clients can't resolve relative paths. Format:
`https://github.com/nexuslabsx/deep-research/blob/main/essays/<slug>/charts/<filename>.png`

### 5. `show` — Show Monte the draft

**Triggers:** "show me the draft", "where are we", "send me what you have"

**Steps:**
1. Read the current `DRAFT.md`
2. If under 3,000 characters, post the full text in chat
3. If over 3,000 characters, post a structured summary in chat:
   - Title + thesis
   - Section list with word counts per section
   - Total word count vs. target
   - Last 1-2 paragraphs written (the "latest work")
   - Path to the full draft (e.g. `essays/<slug>/DRAFT.md`)
4. If there are charts, list them by path so Monte can open them

### 6. `status` — Report essay progress

**Triggers:** "essay status", "how's the essay going", "progress update", "where are we"

**Steps:**
1. Read `PLAN.md` § Active to find the current essay (if Monte names a specific one, use that)
2. Read that essay's `STATUS.md` — it is the source of truth
3. Report in this order:
   - **Vision** — one line from `PLAN.md` § Vision
   - **Current essay** — title + series position from `STATUS.md` header
   - **Phases** — the Phase table verbatim
   - **Current focus** + **last commit** — both from `STATUS.md` header
4. If asked for detail on a specific phase, return that phase's checklist section
5. If `STATUS.md` is missing, fall back to deriving from `DRAFT.md` + `meta.json` + filesystem (and flag the missing STATUS.md)

### 7. `publish` — Prepare for Substack

**Triggers:** "publish the essay", "this is ready", "let's ship it"

**Steps:**
1. Read `DRAFT.md`
2. Strip `## Research Notes` section
3. Copy cleaned content to `FINAL.md`
4. Update `meta.json`: set `status` to `"published"`, add `published` date
5. Format a Substack-ready version:
   - Clean markdown (Substack supports basic markdown)
   - Chart images will need manual upload — list them with filenames
   - Include a suggested title and subtitle
6. Post the Substack-ready text in chat
7. Commit: `publish: <title>`
8. Push
9. Tell Monte in chat: "Copy the text above into Substack. Upload these chart images: [list]. When published, send me the URL and I'll update meta.json."

## Commit Conventions

All commits in the deep-research repo use these prefixes:
- `essay:` — new essay creation
- `research:` — data gathering, source additions
- `draft:` — writing and revisions
- `chart:` — chart generation
- `publish:` — final publication prep
- `docs:` — repo docs, specs, templates

Always push after committing. Monte reviews via git history and chat updates.

## Git Workflow

Run from the repo root (the skill is colocated with the code, so `git rev-parse --show-toplevel` gives the right cwd):

```bash
git add -A
git commit -m "<prefix>: <description>"
git push
```

## Quality Standards

- **Never fabricate data.** If you can't find a specific number, say so. Use "estimated" or "approximately" qualifiers.
- **Always cite sources.** Every data point in the essay should trace back to `data/sources.md`.
- **Incremental commits.** Commit often with descriptive messages. This is Monte's review surface.
- **Ask before big pivots.** If research reveals the thesis is wrong or needs major revision, flag it to Monte before rewriting.
