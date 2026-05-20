# Prompt 03 — Builder Scaffold

**Use with:** Codex, Claude Code, Cursor, Windsurf, Claude Cowork, or any repo-aware coding agent.

**When to use:** After the Architect has produced your first-draft pack. This prompt creates the empty folder/file structure on disk. No application code yet — just the scaffold.

**What it does:** Creates the standard 120x project structure with empty starter files using the templates in `120x-project-scaffold-instructions.md`.

---

## The Prompt

```text
Create a new 120x project structure at this path:

[PASTE_TARGET_PROJECT_PATH]

Use the instructions from:

120x-project-scaffold-instructions.md

Project details:

- Project name: [PROJECT_NAME]
- Client: [CLIENT_NAME]
- Short description: [ONE_SENTENCE_PROJECT_DESCRIPTION]
- Tech stack: [TECH_STACK_IF_KNOWN]
- Current phase: Sprint 001 — Discovery & Architecture

Create the folder/file structure only first.
Do not write application code yet.
Do not overwrite existing files unless I explicitly approve it.

After creating the structure, show me:

1. The folder tree you created.
2. Any files you skipped and why.
3. Any assumptions you made.
```
