#!/bin/bash
# Build apply-yc.skill artifact from source.
# Requires: Python 3.10+, skill-creator package_skill.py

set -e

SKILL_PATH="skills/yc-application"
OUT_DIR="dist"
SKILL_CREATOR="${SKILL_CREATOR_PATH:-/mnt/skills/examples/skill-creator}"

mkdir -p "$OUT_DIR"

if [ ! -f "$SKILL_CREATOR/scripts/package_skill.py" ]; then
  echo "Error: skill-creator not found at $SKILL_CREATOR"
  echo "Set SKILL_CREATOR_PATH env var to the skill-creator directory."
  exit 1
fi

python "$SKILL_CREATOR/scripts/package_skill.py" "$SKILL_PATH" "$OUT_DIR"
echo "Built: $OUT_DIR/yc-application.skill"
