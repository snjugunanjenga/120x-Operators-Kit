# Prompt 07 — Architect Kickoff (Optional)

**Use with:** Claude Chat or ChatGPT when starting a new project from cold context.

**When to use:** When you want the Architect to guide the project setup conversationally instead of producing the full Pack in one shot. Useful when you don't have all the context organized yet and want the Architect to interview you.

**What it does:** Puts the Architect in interview mode. It will ask only for missing context, then produce the Sprint 001 drafts.

---

## The Prompt

```text
I am starting a new 120x.ai client project.

Act as the Architect Layer.
Your job is to help me create the project operating system before any code is written.

Use the 120x Architect / Builder methodology:

- The Architect defines the business goal, users, workflows, data model, risks, decisions, requirements, blueprint, and acceptance criteria.
- The Builder implements inside the repo from written artifacts.
- The handoff is a folder, not a conversation.

First, ask only for the minimum missing context needed to create the initial Project Operating Pack.
If I provide enough context, do not ask unnecessary questions. Make reasonable assumptions and flag them.

The first deliverable should be drafts of:

- AGENTS.md
- STATE.md
- DECISIONS.md
- DOMAIN.md
- RISKS.md
- QUESTIONS.md
- Sprint 001 requirements.md
- Sprint 001 blueprint.md
- Sprint 001 acceptance.md
- Sprint 001 handoff-prompt.md
```
