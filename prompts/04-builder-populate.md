# Prompt 04 — Builder Populate

**Use with:** The same Builder agent (Codex, Claude Code, Cursor, etc.) immediately after Prompt 03.

**When to use:** After the empty structure exists, paste the Architect's output from Prompts 01-02 into this prompt to populate the planning files with real content.

**What it does:** Fills the scaffold with your Architect-generated content while keeping the separation of concerns clean. The Builder is explicitly told what NOT to do.

---

## The Prompt

```text
Populate the project planning files using the content below.

Rules:

- Keep AGENTS.md concise and tool-agnostic.
- Keep CLAUDE.md and CODEX.md as thin adapters that point to AGENTS.md.
- Put current status only in planning/STATE.md.
- Put durable decisions in planning/DECISIONS.md.
- Put client business context in planning/DOMAIN.md.
- Put risks in planning/RISKS.md.
- Put unresolved questions in planning/QUESTIONS.md.
- Put sprint-specific scope in the active sprint folder.
- Do not invent requirements that are not in the source material.
- Do not write application code yet.

Here is the Architect-created content:

[PASTE_ARCHITECT_OUTPUT]
```
