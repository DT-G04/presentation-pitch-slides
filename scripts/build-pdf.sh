#!/usr/bin/env bash
# Rebuild the PDF from index.html (one slide per page, 1280x720).
#
# Usage: scripts/build-pdf.sh [input.html] [output.pdf]
# Defaults: index.html -> cereflow-dt-pitch.pdf, both in the repo root.
# Set CHROME=/path/to/chrome to choose the browser.
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
in="$(realpath "${1:-$root/index.html}")"
out="$(realpath -m "${2:-$root/cereflow-dt-pitch.pdf}")"

if [[ -z "${CHROME:-}" ]]; then
  for c in google-chrome google-chrome-stable chromium chromium-browser \
           "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"; do
    if command -v "$c" >/dev/null 2>&1; then CHROME="$c"; break; fi
  done
fi
[[ -n "${CHROME:-}" ]] || { echo "No Chrome/Chromium found; set CHROME=/path/to/chrome" >&2; exit 1; }

# A throwaway profile keeps this from touching (or clashing with) your open browser.
profile="$(mktemp -d)"
trap 'rm -rf "$profile"' EXIT

# virtual-time-budget gives the web fonts time to load before printing.
"$CHROME" --headless=new --disable-gpu --no-first-run --user-data-dir="$profile" \
  --no-pdf-header-footer --virtual-time-budget=10000 \
  --print-to-pdf="$out" "file://$in" 2>/dev/null

pages="$( (command -v pdfinfo >/dev/null && pdfinfo "$out" | awk '/^Pages:/{print $2}') || echo '?')"
echo "Wrote $out ($pages pages)"
