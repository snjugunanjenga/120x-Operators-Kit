# Prompt 01 — Architect Pack Creation

**Use with:** Claude Chat, ChatGPT, Gemini, or any reasoning model acting as the Architect Layer.

**When to use:** At the start of a new project, after you've uploaded the standard 120x docs (`120x-architect-builder-philosophy.md` and `120x-project-scaffold-instructions.md`) plus any project-specific context (proposal, emails, meeting notes, sample data, screenshots).

**What it does:** Produces first-draft project planning files — AGENTS.md, STATE.md, DECISIONS.md, DOMAIN.md, RISKS.md, QUESTIONS.md, plus Sprint 001 docs and any applicable architecture/data-model/validation docs.

---

## The Prompt

```text
Use the 120x Architect / Builder system to create the planning structure for this project.

First, read the standard 120x philosophy and scaffold documents in the project sources.
Then read the project-specific materials I uploaded.

Create a first-draft Project Operating Pack with the following files:

- AGENTS.md
- planning/STATE.md
- planning/DECISIONS.md
- planning/DOMAIN.md
- planning/RISKS.md
- planning/QUESTIONS.md
- planning/FILE_INVENTORY.md, if the project involves source files, spreadsheets, documents, or uploaded assets
- planning/sprints/001-discovery-architecture/requirements.md
- planning/sprints/001-discovery-architecture/blueprint.md
- planning/sprints/001-discovery-architecture/acceptance.md
- planning/sprints/001-discovery-architecture/handoff-prompt.md
- docs/ARCHITECTURE.md, if enough technical context exists
- docs/DATA_MODEL.md, if the project involves structured data
- docs/VALIDATION.md, if the project requires testing against source data or business rules

Keep the first drafts practical and lightweight. Do not overbuild the documentation. Focus on what the Builder needs to start safely.

Separate the output by filename using clear markdown headings.
Flag any assumptions and unresolved questions clearly.
```
