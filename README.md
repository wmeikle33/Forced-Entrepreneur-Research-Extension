# Forced Entrepreneurship Across Cultures

> An extension to **Forced Entrepreneurs** (Hacamo & Kleiner, 2021) — replication + cross‑country cultural analysis.

This repository packages the research paper and a light, reproducible structure for code, data, and figures.

- **Paper title:** *Forced Entrepreneurship Across Cultures: An Extension to Forced Entrepreneurs by Hacamo & Kleiner*
- **Authors:** William Meikle, Adel Moin, Abdullah Fayaz, Timur Khakimullin
- **Date:** 2022‑01‑27

If you're viewing this on GitHub, the PDF is under [`paper/`](paper/).

---

## Overview

We replicate the main result of Hacamo & Kleiner (2021): an unemployment shock increases entry into entrepreneurship, and firms founded by these “forced entrepreneurs” exhibit stronger quality metrics (survival, employment growth, VC funding, acquisitions). We then extend the analysis to graduates across **15 countries** and study how **Hofstede’s Individualism** relates to entry and firm outcomes.

**Headline extension finding:** Medium levels of individualism are most strongly correlated with both entry into entrepreneurship and firm success; low and high individualism show marginal positive correlations.

---

## Repository structure

```
forced-entrepreneurship-across-cultures/
├─ paper/                      # the PDF of the paper
├─ data/
│  ├─ raw/                     # put raw, source data here (not tracked by gitignore advice)
│  └─ processed/               # analysis‑ready tables
├─ src/
│  ├─ analysis.py              # Python example scaffolding
│  └─ utils.py                 # helpers (placeholders)
├─ stata/
│  └─ replicate.do             # Stata scaffolding for replication
├─ notebooks/
│  └─ 01-explore.ipynb         # optional EDA notebook (create as needed)
├─ figures/                    # exported figures
├─ LICENSE
├─ CITATION.cff
├─ requirements.txt
└─ README.md
```

---

## Quick start

```bash
# 1) clone or unzip this repo
# 2) (optional) create a venv
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

# 3) drop source data into data/raw/
# 4) run example
python -m src.analysis
```

If you work in **Stata**, open `stata/replicate.do` and follow the comments.

---

## Data

- Replication uses author‑provided subsample from the original paper.
- Extension: manually/web‑scraped graduate + firm data for 15 countries, grouped by **low / medium / high** individualism.

> ⚠️ Data files are not committed. Place raw files under `data/raw/` and document their provenance in `data/README.md`.

---

## Methods (brief)

- Linear probability models (LPM) for entry into entrepreneurship and firm quality.
- Fixed effects interacting **university × graduation cohort × major × industry**; gender FE.
- Extension compares coefficients across **individualism groups**.

---

## Results (brief)

- Positive relationship between unemployment shock and entry (replication).
- Positive effects on firm outcomes (VC funding, IPO/acquisition, patents) in the replication.
- Non‑monotone relation with Individualism: **medium** > low/high for both entry and quality (extension).

---

## Reproduce

- **Python:** use `src/analysis.py` as a starting point for table/figure generation.
- **Stata:** use `stata/replicate.do` for the original LPM setup and fixed effects.

---

## How to cite

If you use this repository, please cite the paper and this repo (see `CITATION.cff`).

---

## License

MIT (see `LICENSE`).
