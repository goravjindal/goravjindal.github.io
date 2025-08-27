#!/usr/bin/env bash
#
# tex2blog.sh – Convert LaTeX file into al-folio blog post with bibliography.
# Extract YAML from everything before \documentclass, removing %
# Default CSL style is apa.csl
#
# Usage: ./tex2blog.sh input.tex [references.bib] [style.csl]

set -e

if [ $# -lt 1 ]; then
  echo "Usage: $0 input.tex [references.bib] [style.csl]"
  exit 1
fi

INPUT_TEX="$1"
BIBFILE="${2:-Bibliography.bib}"
CSLFILE="${3:-apa.csl}"

# Output filename: same as input but with .md
OUTFILE="${INPUT_TEX%.tex}.md"

# --- Extract YAML front matter ---
YAML=$(awk '
  /^\\documentclass/ {exit}
  {sub(/^%[ ]?/, ""); print}
' "$INPUT_TEX")

# Write YAML front matter to output
{
  echo "---"
  echo "$YAML"
  echo "---"
} > "$OUTFILE"

# --- Convert LaTeX to Markdown via Pandoc ---
pandoc "$INPUT_TEX" \
  --to gfm \
  --mathjax \
  --citeproc \
  --bibliography="$BIBFILE" \
  -o /tmp/pandoc_output.md

# --- Post-process Markdown to convert formatting to HTML ---
#

perl -0777 -pe '
    # Bold: **text** -> <strong>text</strong>
    s/\*\*(.+?)\*\*/<strong>$1<\/strong>/gs;
    # Italic: *text* -> <em>$1<\/em>
    s/\*(.+?)\*/<em>$1<\/em>/gs;
    # Underline: __text__ -> <u>$1<\/u>
    s/__(.+?)__/ <u>$1<\/u>/gs;
    # DOI links: convert weird <...> to HTML link
    s|https://doi\.org/<(https://doi\.org/[^>]+)>|<a href="\1">\1</a>|g;
    # Add "## References" + --- before the references div, keep the original div line
    s|(?=<div\s+id="refs"[^>]*class="[^"]*references[^"]*"[^>]*>)|## References\n---\n|gis;
' /tmp/pandoc_output.md >> "$OUTFILE"

echo "✅ Blog post generated: $OUTFILE"

