# CereFlow-DT · 2-minute pitch

Six-slide pitch deck for the CereFlow-DT toy digital twin (Digital Twin Engineering group project).
It is one static HTML file with no build step and no external dependencies.

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

`index.html#4` opens slide 4 directly. To export a PDF, print from Chrome (Save as PDF, margins "None"); each slide becomes one page.

## Hosting on GitHub Pages

1. Push this folder to a GitHub repository.
2. Go to **Settings → Pages → Build and deployment**, choose **Deploy from a branch**, branch `main`, folder `/ (root)`.
3. The deck is served at `https://<user>.github.io/<repo>/`.

`.nojekyll` stops GitHub from running Jekyll over the files.

## Sources

All numbers come from `evaluation/toy-project-report.html` in the course repository, re-checked by `verify_report.py` (29/29 checks OK).
Data: PhysioNet, *Cardiorespiratory response to orthostatic stress* v1.0. Study: Mukli et al., Front. Physiol. 2021, doi:10.3389/fphys.2021.622569.
