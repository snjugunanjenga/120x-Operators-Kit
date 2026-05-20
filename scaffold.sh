#!/usr/bin/env bash
#
# 120x Project Scaffold
#
# Creates the standard 120x project folder structure with empty starter files.
#
# Usage:
#     ./scaffold.sh <project-slug>
#
# Example:
#     ./scaffold.sh quarterly-rebates
#
# After running this, populate the empty files using the templates in the kit
# (or have your Builder do it via prompts/04-builder-populate.md).

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <project-slug>"
  exit 1
fi

SLUG="$1"

if [ -e "$SLUG" ]; then
  echo "Refusing to overwrite existing path: $SLUG"
  exit 1
fi

# Folders
mkdir -p "$SLUG"/{docs,planning/{meetings,sprints/001-discovery-architecture},src,tests,scripts,samples,references}

# Top-level files
touch "$SLUG/AGENTS.md"
touch "$SLUG/CLAUDE.md"
touch "$SLUG/CODEX.md"
touch "$SLUG/README.md"
touch "$SLUG/.gitignore"

# docs/
touch "$SLUG/docs/ARCHITECTURE.md"
touch "$SLUG/docs/DATA_MODEL.md"
touch "$SLUG/docs/API.md"
touch "$SLUG/docs/PERMISSIONS.md"
touch "$SLUG/docs/VALIDATION.md"

# planning/
touch "$SLUG/planning/STATE.md"
touch "$SLUG/planning/DECISIONS.md"
touch "$SLUG/planning/DOMAIN.md"
touch "$SLUG/planning/RISKS.md"
touch "$SLUG/planning/QUESTIONS.md"
touch "$SLUG/planning/FILE_INVENTORY.md"
touch "$SLUG/planning/meetings/README.md"

# Sprint 001
touch "$SLUG/planning/sprints/001-discovery-architecture/requirements.md"
touch "$SLUG/planning/sprints/001-discovery-architecture/blueprint.md"
touch "$SLUG/planning/sprints/001-discovery-architecture/acceptance.md"
touch "$SLUG/planning/sprints/001-discovery-architecture/handoff-prompt.md"

# Code folders
touch "$SLUG/src/README.md"
touch "$SLUG/tests/README.md"
touch "$SLUG/scripts/README.md"
touch "$SLUG/samples/README.md"
touch "$SLUG/references/README.md"

echo ""
echo "Created 120x project structure at: $SLUG/"
echo ""
echo "Next step: populate the empty files using either"
echo "  - the templates in the 120x Operators Kit, or"
echo "  - prompts/04-builder-populate.md against your Architect's output."
