# Phase 1: Repo + Skill Setup

## Context

We're building a deep research workflow for long-form essays. The repo (`nexuslabsx/deep-research`) is created and has initial scaffolding. Now we need the ash-core skill that makes the workflow frictionless from Telegram.

## Requirements

### 1. Deep Research Skill (`ash-core/skills/deep-research/`)

A new skill in ash-core that handles the essay lifecycle. Triggered by natural language on Telegram.

**Commands / intents:**

| Intent | Trigger examples | What it does |
|--------|-----------------|--------------|
| **new** | "start a new research topic", "new essay about X" | Create essay folder from template, seed DRAFT.md with thesis + outline, commit |
| **research** | "research X for the essay", "dig into Y" | Web search, structure findings into sources.md, append data to CSVs, commit |
| **draft** | "update the draft", "write section on X", "add this to the draft" | Edit/append DRAFT.md, commit with descriptive message |
| **chart** | "generate a chart for X", "chart the revenue data" | Generate matplotlib chart (light theme, clean), save PNG to charts/, commit |
| **show** | "show me the draft", "where are we on the essay" | Send DRAFT.md content (or summary if long) to Telegram |
| **status** | "essay status" | Word count, sections written, last commit, open questions |
| **publish** | "publish the essay", "this is ready" | Copy DRAFT.md → FINAL.md, update meta.json, format for Substack copy-paste |

**Skill file structure:**
```
ash-core/skills/deep-research/
├── SKILL.md              # Skill definition + instructions
└── references/
    └── chart-style.md    # Chart style guide (light theme, fonts, colors)
```

### 2. Chart Generation

Charts are generated via Python matplotlib on Railway.

**Style requirements:**
- White/light background
- Clean sans-serif font (default matplotlib)
- Simple color palette (2-4 colors max)
- No gridlines unless they add clarity
- Title + axis labels, no legends unless multi-series
- Output: PNG, 1200x800px default
- Saved to `essays/<topic>/charts/<descriptive-name>.png`

**Implementation:** Inline Python via `exec` tool. No separate script file needed for now — the skill instructions tell Ash how to generate charts. If we find ourselves repeating boilerplate, we extract a `scripts/chart-gen.py` helper later.

### 3. Repo Configuration

- Add deep-research to the projects that get synced/pulled
- Ensure git identity is configured for commits

## Technical Approach

The skill is pure instructions — no code to build. It tells the agent:
1. Where the repo lives (`/data/.openclaw/projects/deep-research/`)
2. How to create/find essay folders
3. How to commit incrementally with good messages
4. How to generate charts with matplotlib
5. How to format for Substack output

The chart generation uses inline Python executed via the `exec` tool. The skill provides the style template and the agent fills in data-specific parameters.

## Acceptance Criteria

1. **Skill exists** at `ash-core/skills/deep-research/SKILL.md` with all 7 intents documented
2. **Chart style reference** exists at `ash-core/skills/deep-research/references/chart-style.md`
3. **"show me the draft"** on Telegram returns the current DRAFT.md content for the active essay
4. **"essay status"** returns word count, section list, and last commit info
5. **Chart generation** produces a clean light-theme PNG when given data and chart type
6. **All repo files** committed and pushed to `nexuslabsx/deep-research`
7. **Skill registered** — appears in the skill list after gateway restart

## Out of Scope

- Substack API integration (Phase 3)
- Web scraping or automated data collection pipelines
- Interactive/JS charts (static PNG only for now)
- Multi-essay management UI (one essay at a time is fine)

## Open Questions

None — Monte's answers from the brainstorm covered everything needed for this phase.
