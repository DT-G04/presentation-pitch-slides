# CereFlow-DT · 2-minute pitch

Six-slide design pitch for the CereFlow-DT digital twin (Digital Twin Engineering group project).
It pitches the design, not results: the only data shown (the 69% hook and the dashboard screenshot) is labelled as a first prototype check on the public dataset.
It is one static HTML file with no build step and no external dependencies.

**Live:** https://dt-g04.github.io/presentation-pitch-slides/

| # | Slide | Time |
|---|-------|------|
| 1 | Hook: in a first data check, brain flow fell to 69% on standing | 0:20 |
| 2 | Problem: three questions clinicians need answered | 0:20 |
| 3 | The design: replay → MQTT → twin → dashboard | 0:25 |
| 4 | What the clinician will see (early prototype screenshot) | 0:25 |
| 5 | How we'll know it works: success criteria | 0:20 |
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

**PDF:** [`cereflow-dt-pitch.pdf`](cereflow-dt-pitch.pdf) has one slide per page. To regenerate it after editing `index.html`:

```bash
scripts/build-pdf.sh                      # index.html -> cereflow-dt-pitch.pdf
scripts/build-pdf.sh other.html out.pdf   # custom input/output
CHROME=/path/to/chromium scripts/build-pdf.sh
```

It prints the page with headless Chrome/Chromium using the deck's print stylesheet (1280×720 per page). It needs an internet connection for the web fonts.

The full spoken script is in the speaker notes (press N).

## Hosting on GitHub Pages

The workflow `.github/workflows/pages.yml` publishes the deck on every push to `main`.
It uploads only `index.html`, `assets/`, the PDF and `.nojekyll`. The PDF is then at https://dt-g04.github.io/presentation-pitch-slides/cereflow-dt-pitch.pdf.

One-time setup by a repository admin: **Settings → Pages → Build and deployment → Source: GitHub Actions**.
After that, push to `main` (or run the workflow by hand from the **Actions** tab) and the deck appears at the live URL above within a minute or two.

## Sources

The prototype numbers on slides 1 and 4 (78% / 69% for subject 02) come from a first check of the data in the course repository (`evaluation/toy-project-report.html`). They are not validated results.
Data: PhysioNet, *Cardiorespiratory response to orthostatic stress* v1.0. Study: Mukli et al., Front. Physiol. 2021, doi:10.3389/fphys.2021.622569.
