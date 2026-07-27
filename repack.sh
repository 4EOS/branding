#!/bin/sh
# Rebuild 4eos-branding.skill from the canonical SKILL.md.
set -eu
cd "$(dirname "$0")"
rm -rf 4eos-branding
mkdir 4eos-branding
cp 4EOS-Brand-Styling-SKILL.md 4eos-branding/SKILL.md
rm -f 4eos-branding.skill
zip -r 4eos-branding.skill 4eos-branding
rm -rf 4eos-branding
echo "Wrote 4eos-branding.skill"
