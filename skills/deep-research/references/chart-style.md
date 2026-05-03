# Chart Style Guide

All charts for deep research essays follow this style.

## Font

- **Family:** Inter (installed at `/usr/share/fonts/truetype/inter/`)
- **Fallback:** Liberation Sans, then default sans-serif
- Set globally: `plt.rcParams['font.family'] = 'Inter'`

## General

- **Background:** White (`#FFFFFF`)
- **Text color:** `#1a1a1a` (titles, labels), `#6B7280` (secondary), `#9CA3AF` (captions)
- **Resolution:** 150 DPI, `figsize` varies by chart type (12-14 wide, 6-8 tall)
- **Output format:** PNG

## Colors

Primary palette (use in order):
1. `#2563EB` — Blue (primary / modern era)
2. `#DC2626` — Red (secondary / Roman era)
3. `#059669` — Green (tertiary)
4. `#D97706` — Amber (quaternary)

For gradient effects: `plt.cm.Blues(0.3 + 0.6 * (value / max_value))`

## Layout

- Title: 17pt, bold, left-aligned (`loc='left'`), color `#1a1a1a`, `pad=12`
- Source line: 8.5pt, color `#9CA3AF`, bottom of figure via `fig.text()`
- Axis labels: 12pt, colored to match data when using dual axes
- Tick labels: 10pt
- Grid: `#E5E7EB`, y-axis only, dashed, `alpha=0.3`
- Remove top and right spines
- Axes edge color: `#D1D5DB`, linewidth 0.8
- Use `tight_layout(rect=[0, 0.04, 1, 1])` to leave room for source line

## Annotations

- Use `bbox=dict(boxstyle='round,pad=0.4', facecolor='white', edgecolor='#E5E7EB')` for callout boxes
- Arrow style: `arrowstyle='->'`, color `#C0C0C0` for neutral, match data color for emphasis
- Font size: 9.5-11pt for annotations, never smaller than 9pt
- Prefer fewer, larger annotations over many small ones

## Chart Types

- **Line:** 2.5-3pt linewidth, circle markers (4-5pt), subtle fill_between (alpha 0.05-0.06)
- **Horizontal bar:** gradient coloring by value, 0.7 height, white edge, direct value labels
- **Dual axis:** color-code everything (labels, ticks, lines) to each axis
- **Comparison tables:** Use matplotlib text rendering for visual table layouts when bar scales are incompatible
- **Pie/donut:** Use for side-by-side metric comparisons; large center number, clean segment labels

## Global rcParams Template

```python
plt.rcParams.update({
    'font.family': 'Inter',
    'font.size': 11,
    'axes.titlesize': 17,
    'axes.titleweight': 'bold',
    'axes.labelsize': 12,
    'xtick.labelsize': 10,
    'ytick.labelsize': 10,
    'figure.facecolor': 'white',
    'axes.facecolor': 'white',
    'axes.edgecolor': '#D1D5DB',
    'axes.linewidth': 0.8,
    'grid.alpha': 0.3,
    'grid.color': '#E5E7EB',
    'grid.linestyle': '--',
})
```
