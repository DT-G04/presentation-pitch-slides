# CereFlow-DT · 2-minute pitch

Six-slide pitch deck for the CereFlow-DT toy digital twin (Digital Twin Engineering group project).
It is one static HTML file with no build step and no external dependencies.

**Live:** https://dt-g04.github.io/presentation-pitch-slides/

| # | Slide | Time |
|---|-------|------|
| 1 | Hook: brain flow fell to 69% on standing | 0:20 |
| 2 | Problem: three questions clinicians need answered | 0:20 |
| 3 | How it works: replay → MQTT → twin → dashboard | 0:25 |
| 4 | Dashboard at the moment of the stand-up | 0:25 |
| 5 | Results | 0:20 |
| 6 | What's next and the one ask | 0:10 |

## Presenting

Open `index.html` in a browser.

| Key | Action |
|-----|--------|
| → / Space / click right edge / swipe | next slide |
| ← / click left edge | previous slide |
| N | show the speaker notes (the full 2-minute script) |
| T | start the timer; the counter turns red when you're behind the per-slide target |
| F | fullscreen |

`index.html#4` opens slide 4 directly.

**PDF:** [`cereflow-dt-pitch.pdf`](cereflow-dt-pitch.pdf) has one slide per page. To regenerate it after editing the slides:

```bash
google-chrome --headless=new --no-pdf-header-footer --virtual-time-budget=6000 \
  --print-to-pdf=cereflow-dt-pitch.pdf "file://$PWD/index.html"
```

The full spoken script is in the speaker notes (press N).

## Hosting on GitHub Pages

The workflow `.github/workflows/pages.yml` publishes the deck on every push to `main`.
It uploads only `index.html`, `assets/`, the PDF and `.nojekyll`. The PDF is then at https://dt-g04.github.io/presentation-pitch-slides/cereflow-dt-pitch.pdf.

One-time setup by a repository admin: **Settings → Pages → Build and deployment → Source: GitHub Actions**.
After that, push to `main` (or run the workflow by hand from the **Actions** tab) and the deck appears at the live URL above within a minute or two.

## Sources

All numbers come from `evaluation/toy-project-report.html` in the course repository, re-checked by `verify_report.py` (29/29 checks OK).
Data: PhysioNet, *Cardiorespiratory response to orthostatic stress* v1.0. Study: Mukli et al., Front. Physiol. 2021, doi:10.3389/fphys.2021.622569.
