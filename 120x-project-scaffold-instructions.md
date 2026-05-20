# 120x Project Scaffold Instructions

**Purpose:** Use this document with Codex, Claude Code, ChatGPT, Claude, Cursor, or any repo-aware coding agent to create a new 120x.ai project operating structure.

These instructions are tool-agnostic. The target tool should create folders and starter Markdown files in the directory specified by the user.

---

## How to Use This File

Give the Builder tool a prompt like this:

```text
Use the instructions in 120x-project-scaffold-instructions.md to create a new project structure at:

/path/to/120x/builds/{project-name}

Project name: {Project Name}
Client: {Client Name}
Short description: {One sentence}
Tech stack: {Optional}

Create the folder structure and starter files. Do not overwrite existing files unless I explicitly approve it.
```

The tool should then create the structure below.

---

## Builder Rules

Before creating files, the Builder must:

1. Confirm the target directory path.
2. Check whether the target directory already exists.
3. If files already exist, do **not** overwrite them unless the user explicitly says to overwrite.
4. Create missing folders and starter files.
5. Keep starter files concise and useful.
6. Use Markdown for planning and documentation files.
7. Keep tool-specific adapter files thin.
8. Make `AGENTS.md` the canonical instruction file.

The Builder must not:

- Create application code unless the user asks for it.
- Invent detailed product requirements.
- Fill unknown business details with fake certainty.
- Delete existing files.
- Store secrets, API keys, passwords, or private credentials in any file.

---

## Required Inputs

The Builder should ask for or infer the following:

| Input | Required | Notes |
|---|---:|---|
| Target directory | Yes | Where to create the project |
| Project name | Yes | Human-readable name |
| Project slug | Yes | Lowercase folder-safe name; infer if not provided |
| Client name | Optional | Use `TBD` if unknown |
| Short description | Optional | One sentence; use `TBD` if unknown |
| Tech stack | Optional | Use `TBD` if unknown |
| Current date | Optional | Use system date if available |

---

## Standard Project Structure

Create this structure:

```text
{project-slug}/
├── AGENTS.md
├── CLAUDE.md
├── CODEX.md
├── README.md
├── .gitignore
├── docs/
│   ├── ARCHITECTURE.md
│   ├── DATA_MODEL.md
│   ├── API.md
│   ├── PERMISSIONS.md
│   └── VALIDATION.md
├── planning/
│   ├── STATE.md
│   ├── DECISIONS.md
│   ├── DOMAIN.md
│   ├── RISKS.md
│   ├── QUESTIONS.md
│   ├── FILE_INVENTORY.md
│   ├── meetings/
│   │   └── README.md
│   └── sprints/
│       └── 001-discovery-architecture/
│           ├── requirements.md
│           ├── blueprint.md
│           ├── acceptance.md
│           └── handoff-prompt.md
├── src/
│   └── README.md
├── tests/
│   └── README.md
├── scripts/
│   └── README.md
├── samples/
│   └── README.md
└── references/
    └── README.md
```

For projects with sensitive client files, actual source files should usually live outside git or be ignored by `.gitignore`.

---

## File Contents

Use the templates below.

---

# Template: `AGENTS.md`

```markdown
# AGENTS.md

## Project

**Name:** {Project Name}  
**Client:** {Client Name}  
**Description:** {Short Description}  
**Tech stack:** {Tech Stack}  
**Created:** {Date}

---

## Operating Model

This project uses the 120x Architect / Builder methodology.

The handoff is a folder, not a conversation.

The Builder must read project files before making changes and must build to the approved sprint blueprint.

---

## First Files to Read

Read these in order at the start of every session:

1. `AGENTS.md`
2. `planning/STATE.md`
3. `planning/DECISIONS.md`
4. `planning/DOMAIN.md`
5. Active sprint files under `planning/sprints/`
6. Relevant docs under `docs/`

---

## Project Structure

```text
.
├── docs/                  # Durable technical documentation
├── planning/              # Project planning, domain context, decisions, risks, sprints
├── src/                   # Production application code
├── tests/                 # Automated tests
├── scripts/               # One-off and repeatable utility scripts
├── samples/               # Local sample files; usually gitignored if sensitive
└── references/            # Reference material used by the Architect/Builder
```

---

## Builder Rules

- Do not redefine project scope.
- Do not invent business rules.
- Do not overwrite existing files without explicit approval.
- Do not store secrets in the repo.
- Prefer small, testable changes.
- Update `planning/STATE.md` at the end of each meaningful session.
- Record durable decisions in `planning/DECISIONS.md`.
- Update `docs/ARCHITECTURE.md` when architecture changes.
- Add or update tests when behavior changes.

---

## Sprint Workflow

Each sprint lives in:

```text
planning/sprints/###-{sprint-name}/
```

Each sprint should include:

- `requirements.md` — what and why
- `blueprint.md` — how to build it
- `acceptance.md` — what done means
- `handoff-prompt.md` — exact Builder prompt

The Builder should read all four before implementation.

---

## Completion Standard

A task is complete only when:

- The requested behavior is implemented.
- Relevant tests pass or a clear reason is documented.
- Acceptance criteria are satisfied.
- State and documentation are updated where needed.
- Any unresolved risks or questions are recorded.
```

---

# Template: `CLAUDE.md`

```markdown
# CLAUDE.md

This is a Claude-specific adapter file.

Claude Code should read `AGENTS.md` first and treat it as the canonical project instruction file.

Do not use this file as a dumping ground for project history or sprint details.

Start every session by reading:

1. `AGENTS.md`
2. `planning/STATE.md`
3. `planning/DECISIONS.md`
4. `planning/DOMAIN.md`
5. Active sprint files
```

---

# Template: `CODEX.md`

```markdown
# CODEX.md

This is a Codex-specific adapter file.

Codex should read `AGENTS.md` first and treat it as the canonical project instruction file.

Do not redefine scope or invent business rules. Build from the active sprint requirements, blueprint, and acceptance criteria.

Start every session by reading:

1. `AGENTS.md`
2. `planning/STATE.md`
3. `planning/DECISIONS.md`
4. `planning/DOMAIN.md`
5. Active sprint files
```

---

# Template: `README.md`

```markdown
# {Project Name}

**Client:** {Client Name}  
**Description:** {Short Description}  
**Tech stack:** {Tech Stack}

---

## Status

See `planning/STATE.md` for current project status.

---

## Operating Model

This project uses the 120x Architect / Builder methodology.

- Planning lives in `planning/`
- Durable technical docs live in `docs/`
- Source code lives in `src/`
- Tests live in `tests/`
- Utility scripts live in `scripts/`

The handoff is a folder, not a conversation.
```

---

# Template: `.gitignore`

```gitignore
# Dependencies
node_modules/
.venv/
venv/
__pycache__/
.pytest_cache/

# Environment / secrets
.env
.env.*
!.env.example

# Build outputs
dist/
build/
.next/
.out/
coverage/

# OS / editor
.DS_Store
.vscode/settings.json
.idea/

# Client-sensitive local files
samples/raw/
samples/private/
*.xlsx
*.xlsm
*.xls
*.csv
*.pdf

# Logs
*.log
```

---

# Template: `planning/STATE.md`

```markdown
# Project State

**Project:** {Project Name}  
**Client:** {Client Name}  
**Last updated:** {Date}

---

## Current Status

TBD.

---

## Active Sprint

`planning/sprints/001-discovery-architecture/`

---

## Recently Completed

- Project scaffold created.

---

## Next Actions

- Complete discovery notes.
- Draft `requirements.md`.
- Draft `blueprint.md`.
- Define acceptance criteria.

---

## Blockers

- TBD.
```

---

# Template: `planning/DECISIONS.md`

```markdown
# Decisions

Record durable decisions future sprints must respect.

---

## Decision Log

| Date | Decision | Reason | Impact |
|---|---|---|---|
| {Date} | Project scaffold created using 120x Architect / Builder methodology. | Establish consistent delivery system. | All future work should follow sprint-based planning. |
```

---

# Template: `planning/DOMAIN.md`

```markdown
# Domain Context

This file captures the client’s world: terminology, workflows, business rules, roles, and operational context.

---

## Client

{Client Name}

---

## Business Goal

TBD.

---

## Users / Roles

TBD.

---

## Current Workflow

TBD.

---

## Key Terms

| Term | Meaning |
|---|---|
| TBD | TBD |

---

## Business Rules

- TBD.
```

---

# Template: `planning/RISKS.md`

```markdown
# Risks

Known project risks and mitigation notes.

---

| Risk | Likelihood | Impact | Mitigation | Status |
|---|---:|---:|---|---|
| TBD | TBD | TBD | TBD | Open |
```

---

# Template: `planning/QUESTIONS.md`

```markdown
# Open Questions

Questions that need answers from the client, Architect, or Builder.

When answered, move the durable answer into `DECISIONS.md`, `DOMAIN.md`, or the relevant sprint file.

---

| Question | Owner | Needed By | Status | Answer / Notes |
|---|---|---|---|---|
| TBD | TBD | TBD | Open | TBD |
```

---

# Template: `planning/FILE_INVENTORY.md`

```markdown
# File Inventory

Use this file to track important client files, source data, samples, references, and their status.

---

| File | Source | Purpose | Sensitive? | Status | Notes |
|---|---|---|---|---|---|
| TBD | TBD | TBD | TBD | TBD | TBD |
```

---

# Template: `planning/meetings/README.md`

```markdown
# Meetings

Store meeting notes here.

Recommended naming:

```text
YYYY-MM-DD-{meeting-topic}.md
```

Meeting notes should capture decisions, questions, risks, and follow-ups. Durable decisions should also be copied into `planning/DECISIONS.md`.
```

---

# Template: `planning/sprints/001-discovery-architecture/requirements.md`

```markdown
# Sprint 001 Requirements — Discovery & Architecture

## Goal

Define what this project is building, why it matters, who uses it, and what must be true for the build to succeed.

---

## Business Objective

TBD.

---

## Users

TBD.

---

## In Scope

- TBD.

---

## Out of Scope

- TBD.

---

## Workflows

TBD.

---

## Data Sources

TBD.

---

## Business Rules

- TBD.

---

## Edge Cases

- TBD.
```

---

# Template: `planning/sprints/001-discovery-architecture/blueprint.md`

```markdown
# Sprint 001 Blueprint — Discovery & Architecture

## Objective

Create the initial project architecture and planning artifacts before production implementation begins.

---

## Files to Review

- `AGENTS.md`
- `planning/STATE.md`
- `planning/DOMAIN.md`
- `planning/QUESTIONS.md`
- Any client-provided discovery notes or source files

---

## Files to Create or Update

- `planning/DOMAIN.md`
- `planning/DECISIONS.md`
- `planning/RISKS.md`
- `planning/QUESTIONS.md`
- `docs/ARCHITECTURE.md`
- `docs/DATA_MODEL.md`
- `docs/VALIDATION.md`

---

## Implementation Plan

1. Capture project goal and user roles.
2. Document current workflow and target workflow.
3. Identify core data entities.
4. Identify known risks and open questions.
5. Draft initial architecture.
6. Draft validation approach.
7. Update project state.

---

## Notes

No production code should be created in this sprint unless explicitly approved.
```

---

# Template: `planning/sprints/001-discovery-architecture/acceptance.md`

```markdown
# Sprint 001 Acceptance Criteria

This sprint is complete when:

- Project goal is documented.
- Users and roles are documented.
- Current workflow and target workflow are documented.
- Initial data model is drafted.
- Known risks are recorded.
- Open questions are recorded.
- Initial architecture document exists.
- Validation approach is drafted.
- `planning/STATE.md` is updated.
```

---

# Template: `planning/sprints/001-discovery-architecture/handoff-prompt.md`

```markdown
# Sprint 001 Builder Handoff Prompt

Read the following files first:

1. `AGENTS.md`
2. `planning/STATE.md`
3. `planning/DECISIONS.md`
4. `planning/DOMAIN.md`
5. `planning/sprints/001-discovery-architecture/requirements.md`
6. `planning/sprints/001-discovery-architecture/blueprint.md`
7. `planning/sprints/001-discovery-architecture/acceptance.md`

Task:

Execute Sprint 001 exactly as described. Do not create production code unless explicitly approved. Focus on completing and organizing the planning and architecture artifacts.

Before making changes, summarize your understanding of the sprint and list the files you plan to create or update.

After changes, summarize what was completed, what remains open, and whether the acceptance criteria are met.
```

---

# Template: `docs/ARCHITECTURE.md`

```markdown
# Architecture

## Overview

TBD.

---

## System Components

TBD.

---

## Data Flow

TBD.

---

## Key Files and Directories

TBD.

---

## External Services

TBD.

---

## Architecture Decisions

See `planning/DECISIONS.md`.
```

---

# Template: `docs/DATA_MODEL.md`

```markdown
# Data Model

## Overview

TBD.

---

## Entities

| Entity | Purpose | Notes |
|---|---|---|
| TBD | TBD | TBD |

---

## Relationships

TBD.
```

---

# Template: `docs/API.md`

```markdown
# API

## Overview

TBD.

---

## Endpoints

| Method | Path | Purpose | Auth Required? |
|---|---|---|---|
| TBD | TBD | TBD | TBD |
```

---

# Template: `docs/PERMISSIONS.md`

```markdown
# Permissions

## Overview

TBD.

---

## Roles

| Role | Description | Permissions |
|---|---|---|
| TBD | TBD | TBD |

---

## Access Rules

- TBD.
```

---

# Template: `docs/VALIDATION.md`

```markdown
# Validation Plan

## Overview

This document defines how the project proves that outputs are correct and trustworthy.

---

## Validation Principles

- Outputs should be traceable to source data or explicit user input.
- Critical business logic should be tested.
- Manual comparisons should be documented where automation is not yet available.
- Known exceptions should be recorded.

---

## Validation Checklist

| Area | Validation Method | Status | Notes |
|---|---|---|---|
| TBD | TBD | TBD | TBD |
```

---

# Template: `src/README.md`

```markdown
# Source Code

Production application code lives here.

Do not place planning documents or client notes in this directory.
```

---

# Template: `tests/README.md`

```markdown
# Tests

Automated tests live here.

Test structure should mirror the application structure where practical.
```

---

# Template: `scripts/README.md`

```markdown
# Scripts

Utility scripts live here.

Examples:

- Data inspection scripts
- Migration helpers
- Backfill scripts
- Local development utilities

Scripts should include usage notes when they are not obvious.
```

---

# Template: `samples/README.md`

```markdown
# Samples

Sample files and test fixtures live here.

Do not commit sensitive client files unless explicitly approved.

Recommended local-only folders:

```text
samples/raw/
samples/private/
```

These are ignored by default in `.gitignore`.
```

---

# Template: `references/README.md`

```markdown
# References

Reference material used by the Architect or Builder lives here.

Examples:

- Client-provided docs
- API documentation exports
- Design references
- Screenshots
- Research notes

Do not store secrets here.
```

---

## Optional: Shell Commands for Unix-like Systems

If the Builder can run shell commands, it may use this pattern after replacing `{project-slug}`:

```bash
mkdir -p "{project-slug}"/{docs,planning/{meetings,sprints/001-discovery-architecture},src,tests,scripts,samples,references}

touch "{project-slug}/AGENTS.md"
touch "{project-slug}/CLAUDE.md"
touch "{project-slug}/CODEX.md"
touch "{project-slug}/README.md"
touch "{project-slug}/.gitignore"
touch "{project-slug}/docs/ARCHITECTURE.md"
touch "{project-slug}/docs/DATA_MODEL.md"
touch "{project-slug}/docs/API.md"
touch "{project-slug}/docs/PERMISSIONS.md"
touch "{project-slug}/docs/VALIDATION.md"
touch "{project-slug}/planning/STATE.md"
touch "{project-slug}/planning/DECISIONS.md"
touch "{project-slug}/planning/DOMAIN.md"
touch "{project-slug}/planning/RISKS.md"
touch "{project-slug}/planning/QUESTIONS.md"
touch "{project-slug}/planning/FILE_INVENTORY.md"
touch "{project-slug}/planning/meetings/README.md"
touch "{project-slug}/planning/sprints/001-discovery-architecture/requirements.md"
touch "{project-slug}/planning/sprints/001-discovery-architecture/blueprint.md"
touch "{project-slug}/planning/sprints/001-discovery-architecture/acceptance.md"
touch "{project-slug}/planning/sprints/001-discovery-architecture/handoff-prompt.md"
touch "{project-slug}/src/README.md"
touch "{project-slug}/tests/README.md"
touch "{project-slug}/scripts/README.md"
touch "{project-slug}/samples/README.md"
touch "{project-slug}/references/README.md"
```

The Builder should then populate files using the templates above.

---

## Final Builder Response

After creating the scaffold, the Builder should report:

1. Target directory created or updated.
2. Files created.
3. Files skipped because they already existed.
4. Any assumptions made.
5. Recommended next action.

