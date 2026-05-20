# Prompt 05 — Sprint Start

**Use with:** The Builder agent at the beginning of every sprint after Sprint 001.

**When to use:** When you're ready to start building a specific sprint. The Builder reads the planning files first and confirms understanding before writing any code.

**What it does:** Forces the Builder to summarize what it understands BEFORE making changes, so you can catch misunderstandings early.

---

## The Prompt

```text
Read the following files before making changes:

- AGENTS.md
- planning/STATE.md
- planning/DECISIONS.md
- planning/DOMAIN.md
- planning/RISKS.md
- planning/QUESTIONS.md
- planning/sprints/[SPRINT_FOLDER]/requirements.md
- planning/sprints/[SPRINT_FOLDER]/blueprint.md
- planning/sprints/[SPRINT_FOLDER]/acceptance.md

Then summarize:

1. What you believe this sprint is supposed to accomplish.
2. The files you expect to modify.
3. The tests or validation steps you will run.
4. Any blockers or ambiguities.

Do not start implementation until I approve your summary.
```
