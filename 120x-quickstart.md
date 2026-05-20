# 120x New Project Quickstart

**Purpose:** A repeatable four-step workflow for starting each new 120x.ai client project using the Architect / Builder system.

This file is meant to live in the `Latest Philosophy` folder alongside:

- `120x-architect-builder-philosophy.md`
- `120x-project-scaffold-instructions.md`

Use this as the simple starting checklist whenever a new project begins.

---

## The Core Idea

Do not try to keep the full project structure in your head.

For every serious client build, the workflow is:

1. Add the standard 120x philosophy/scaffold docs and project context to the project sources.
2. Ask the Architect to convert the raw context into the project operating files.
3. Use a Builder tool to create the actual folder/file structure.
4. Execute the project sprint-by-sprint using requirements, blueprint, acceptance criteria, and handoff prompts.

The goal is simple:

> The handoff is a folder, not a conversation.

---

# Step 1 — Add Standard Sources

For every new client project, upload or attach the reusable 120x documents plus the project-specific materials.

## Add these standard 120x files

```text
120x-architect-builder-philosophy.md
120x-project-scaffold-instructions.md
```

## Add project-specific context

Depending on the project, include any of the following:

```text
proposal or scope document
client emails
meeting notes
mockups
sample data files
spreadsheets
screenshots
existing repo notes
technical constraints
pricing/timeline commitments
```

## Working rule

The standard files explain **how 120x builds**.

The project files explain **what this specific client needs**.

Both are needed.

---

# Step 2 — Ask the Architect to Create the Project Operating Pack

Use this prompt with ChatGPT, Claude Chat, or whichever reasoning model is acting as the Architect.

## Architect Prompt

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

## Architect follow-up prompt, if needed

```text
Now tighten this into a Builder-ready version.

For each file, make the content concise, specific, and operational.
Remove generic AI advice.
Preserve project-specific facts, commitments, risks, and open questions.
Make sure the Builder is not asked to make broad product decisions.
```

---

# Step 3 — Ask the Builder to Create the File Structure

Use this prompt with Codex, Claude Code, Cursor, Claude Cowork, or whichever tool is operating inside the project folder.

## Builder Scaffold Prompt

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

## Builder Populate Prompt

After the Builder creates the folders, use this prompt to populate the files from the Architect's output.

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

---

# Step 4 — Execute Sprint-by-Sprint

Once the file structure exists, do not let the Builder improvise from memory.

Each sprint should have:

```text
requirements.md      ← what we are building and why
blueprint.md         ← how to build it, file-by-file
acceptance.md        ← what must be true before the sprint is done
handoff-prompt.md    ← the exact Builder prompt for that sprint
```

## Standard Sprint Start Prompt

Use this with the Builder at the beginning of each sprint.

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

## Standard Sprint Completion Prompt

Use this when the Builder says the work is complete.

```text
Review the sprint against planning/sprints/[SPRINT_FOLDER]/acceptance.md.

Report:

1. Which acceptance criteria are complete.
2. Which acceptance criteria are incomplete or uncertain.
3. What files changed.
4. What tests or validation steps were run.
5. Any risks introduced.
6. Any decisions that should be added to planning/DECISIONS.md.
7. Any status updates that should be added to planning/STATE.md.
8. Any follow-up work that should become the next sprint.

Do not mark the sprint complete if acceptance criteria are not satisfied.
```

---

# Optional: Project Kickoff Prompt for the Architect

Use this when starting a new client project and you want the Architect to guide the setup from scratch.

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

---

# Operating Rules

## Keep the structure lightweight

The docs do not need to be perfect before the project starts.

A useful `STATE.md` can be 20 lines.
A useful `RISKS.md` can be 10 bullets.
A useful `QUESTIONS.md` can be a short checklist.

The structure exists to reduce overwhelm, not create homework.

## Do not duplicate everything everywhere

Use the files for separation of concerns:

```text
STATE.md       current moment
DECISIONS.md   durable choices
DOMAIN.md      client/business context
RISKS.md       known traps
QUESTIONS.md   unresolved items
requirements   sprint scope
blueprint      implementation plan
acceptance     definition of done
```

## Keep tools replaceable

The methodology should work with:

```text
ChatGPT
Claude Chat
Codex
Claude Code
Cursor
Claude Cowork
any future useful Builder agent
```

Tools change. The folder-based handoff should survive that.

## Protect the Builder from broad product decisions

The Builder can propose options, but it should not silently decide:

```text
pricing
scope
user permissions
business rules
source-of-truth definitions
data ownership
client-facing behavior
acceptance criteria
```

Those belong to the Architect and should be written down before implementation.

---

# The Simple Version

For every new project:

```text
1. Add the standard 120x philosophy/scaffold docs and project context to Sources.
2. Ask the Architect to create the Project Operating Pack.
3. Ask the Builder to scaffold and populate the folder structure.
4. Build sprint-by-sprint using requirements, blueprint, acceptance, and handoff prompts.
```

That is the system.
