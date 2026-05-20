# The 120x Architect / Builder Philosophy

**How 120x.ai turns messy business problems into production software**

---

## The Core Idea

Software projects fail when the same person, chat thread, or coding agent is expected to discover the business problem, define the product, make architecture decisions, write code, test the system, remember every decision, and avoid scope creep at the same time.

120x.ai separates the work into two layers:

### 1. Architect Layer

The Architect defines the problem, business goal, users, workflow, data model, risks, requirements, acceptance criteria, and implementation blueprint.

The Architect produces durable written artifacts.

The Architect does **not** mutate the production codebase.

The Architect may create:

- Requirements
- Blueprints
- Data models
- Workflow diagrams
- Parser/config examples
- API contracts
- Acceptance criteria
- Validation plans
- Builder prompts
- Client-facing explanations

### 2. Builder Layer

The Builder implements the approved plan inside the repository.

The Builder reads the project instructions, planning documents, sprint requirements, sprint blueprint, and acceptance criteria. It builds to spec.

The Builder does **not** redefine scope, invent business rules, or make product tradeoffs unless explicitly asked to propose options.

The Builder may create or modify:

- Application code
- Tests
- Migrations
- Scripts
- Components
- APIs
- Parsers
- Documentation updates tied to the implementation

---

## The Handoff Is a Folder, Not a Conversation

The most important rule:

> The source of truth is not the chat thread. The source of truth is the project folder.

AI tools change. Products go down. Models improve. Context windows reset. Chat histories get messy.

A durable operating system cannot depend on one model, one vendor, or one conversation.

Every project should be understandable from its files:

- What are we building?
- Why does it matter?
- Who uses it?
- What decisions have already been made?
- What risks are known?
- What is happening right now?
- What does the current sprint require?
- What does “done” mean?

If a new tool, model, or human builder enters the project, they should be able to read the folder and become useful quickly.

---

## Tool-Agnostic by Design

The methodology is independent of any specific AI product.

Use the best tool available for the role:

| Role | Possible Tools |
|---|---|
| Architect Layer | ChatGPT, Claude Chat, Gemini, human architect, future reasoning model |
| Builder Layer | Codex, Claude Code, Cursor, Windsurf, Copilot Workspace, human developer, future coding agent |

The tools are replaceable.

The artifacts are the operating system.

---

## The Construction Analogy

The construction industry already solved this problem.

You do not hand a framing crew a napkin sketch and say, “Build me a house.”

You hire an architect to produce plans first:

- Floor plans
- Load calculations
- Electrical diagrams
- Plumbing schematics
- Material specifications
- Inspection requirements

Then the builder builds to spec.

Mistakes get caught on paper before they get poured into concrete.

120x.ai builds software the same way.

---

## Why This Works

### 1. Separation of Thinking from Building

The Architect is not rushing to write code, so it can ask better questions.

The Builder is not guessing at requirements, so it can execute with precision.

The result is less rework, less hallucinated scope, and fewer half-built features.

### 2. Clean Context

The Builder does not need every discovery tangent, abandoned idea, or client conversation.

It needs the approved artifacts.

Clean input creates cleaner output.

### 3. Decision Memory

Every non-obvious decision gets recorded.

Future sprints inherit decisions instead of re-litigating them.

The project does not depend on the operator’s memory.

### 4. Tool Flexibility

Because the handoff is file-based, the project can move between tools.

If Codex is better this week, use Codex.

If Claude Code is better next week, use Claude Code.

If a new agent becomes best-in-class, point it at the same project folder.

### 5. Compounding Patterns

Every project produces reusable knowledge:

- Better prompts
- Better folder structures
- Better validation checklists
- Better architecture patterns
- Better pricing and scoping instincts

The factory gets sharper every time it ships.

---

## The Two Layers of the 120x Operating System

The methodology works at two scales.

### Layer 1 — The 120x Business Operating System

This is the macro system that holds clients, pipeline, content, patterns, templates, references, and builds.

Example:

```text
120x/
├── AGENTS.md
├── clients/
├── builds/
├── pipeline/
├── patterns/
├── content/
├── reference/
├── daily/
└── templates/
```

This is the knowledge layer. It compounds across all clients and all projects.

### Layer 2 — The Per-Project Operating System

This is the micro system inside each build.

Every project gets its own planning layer, docs layer, source code layer, test layer, and handoff layer.

Example:

```text
builds/{project-name}/
├── AGENTS.md
├── CLAUDE.md
├── CODEX.md
├── README.md
├── docs/
├── planning/
├── src/
├── tests/
├── scripts/
└── samples/
```

Layer 1 is where the business learns.

Layer 2 is where the project ships.

---

## The Core Per-Project Files

### `AGENTS.md` — The Tool-Agnostic Router

This is the first file every AI agent or human builder should read.

It explains:

- What the project is
- What the tech stack is
- How the repo is organized
- Where planning documents live
- What commands to run
- What rules must be followed
- How to update project state

`AGENTS.md` should be tool-neutral.

### `CLAUDE.md` — Optional Claude Adapter

A thin compatibility file for Claude Code.

It should point Claude to `AGENTS.md` and explain any Claude-specific expectations.

### `CODEX.md` — Optional Codex Adapter

A thin compatibility file for Codex.

It should point Codex to `AGENTS.md` and explain any Codex-specific expectations.

### `planning/STATE.md` — The Current Moment

A short rolling snapshot of what is happening right now.

It should include:

- Current sprint
- Current status
- Recently completed work
- Next action
- Known blockers

This file is edited in place. It is not a session log.

### `planning/DECISIONS.md` — The House Rules

A durable record of decisions future builders must respect.

Examples:

- Why money is stored as integer cents
- Why Supabase was selected
- Why ingestion is file-based
- Why a feature is explicitly out of scope

### `planning/DOMAIN.md` — The Client’s World

Business context, not code context.

This file explains the client’s terminology, workflow, roles, rules, and operational reality.

The goal is to make the Builder speak the client’s language instead of generic software language.

### `planning/RISKS.md` — Known Traps

A short list of known project risks.

Examples:

- Source files may change format
- User permissions may become more complex
- Historical data may be inconsistent
- AI output must not become the source of truth

### `planning/QUESTIONS.md` — Open Questions

Questions that still need answers.

When answered, the result should be moved into `DECISIONS.md`, `DOMAIN.md`, or the relevant sprint file.

### `planning/sprints/###-{name}/requirements.md` — What and Why

The product requirement for a specific sprint.

It defines:

- Goal
- User story
- Scope
- Out of scope
- Business rules
- Inputs and outputs
- Edge cases

### `planning/sprints/###-{name}/blueprint.md` — How

The file-level implementation plan for the sprint.

It defines:

- Files to inspect
- Files to create
- Files to modify
- Step-by-step build plan
- Data model changes
- API changes
- Component changes
- Testing plan

### `planning/sprints/###-{name}/acceptance.md` — What Done Means

The completion contract.

It defines the objective criteria for shipping the sprint.

A sprint is not done because code exists. It is done when the acceptance criteria pass.

### `planning/sprints/###-{name}/handoff-prompt.md` — Builder Prompt

The exact prompt to give the Builder agent.

This keeps handoff clean, repeatable, and tool-agnostic.

### `docs/ARCHITECTURE.md` — System Map

A living map of the production system.

It should describe the major parts of the application and point to the relevant code.

It is not a dumping ground for sprint notes.

### `docs/VALIDATION.md` — How Trust Is Proven

A validation plan for the system.

For data-heavy projects, this is critical.

Every important number or output should be traceable back to its source.

---

## The End-to-End Workflow

### 1. Discovery

Talk to the client. Understand the real workflow, not just the requested feature.

Capture:

- Business goal
- Current process
- Pain points
- Users
- Data sources
- Manual workarounds
- Decision cadence
- Existing tools
- Success criteria

### 2. Architecture

The Architect turns discovery into written artifacts.

Minimum artifacts:

- `requirements.md`
- `blueprint.md`
- `acceptance.md`
- `handoff-prompt.md`

For larger projects:

- `DATA_MODEL.md`
- `PERMISSIONS.md`
- `VALIDATION.md`
- `RISKS.md`
- `QUESTIONS.md`

### 3. Handoff

Drop the approved sprint artifacts into:

```text
planning/sprints/###-{name}/
```

The handoff is now a folder.

### 4. Build

The Builder reads:

1. `AGENTS.md`
2. `planning/STATE.md`
3. `planning/DECISIONS.md`
4. `planning/DOMAIN.md`
5. The active sprint files

Then it confirms scope and builds the sprint.

### 5. Validate

Validation happens against real business expectations, not just passing tests.

Examples:

- Does the parsed number match the source workbook?
- Does the workflow beat the manual process?
- Does the dashboard answer the buyer’s actual question?
- Can a user trust the output?

### 6. Update State

At the end of each session, the Builder updates:

- `planning/STATE.md`
- Any new decisions in `planning/DECISIONS.md`
- Any architecture changes in `docs/ARCHITECTURE.md`
- Any validation notes in `docs/VALIDATION.md`

### 7. Extract Patterns

After delivery, extract reusable patterns into the 120x business operating system.

Examples:

- Parser architecture
- Proposal language
- Validation checklist
- Auth model
- Data ingestion pattern
- Client onboarding template

---

## What This Methodology Refuses

### Vibe Coding

No building from a napkin sketch.

The blueprint is filed before takeoff.

### Single-File Overload

One instruction file cannot hold the whole project.

Context must be separated by purpose.

### Context Pollution

The Builder does not need the whole discovery conversation.

It needs the approved artifacts.

### Hidden Decisions

Important decisions cannot live only in a chat thread or someone’s memory.

They belong in `DECISIONS.md`.

### AI as Source of Truth

AI can assist, summarize, generate, and inspect.

It is not automatically the source of truth.

For business systems, source truth must be traceable to data, documents, user decisions, or client confirmation.

### Heroics

The system should not depend on one person remembering everything.

A new operator, agent, or collaborator should be able to read the files and continue the work.

---

## The Compounding Result

Every project creates three assets:

### 1. The Shipped System

The thing the client paid for.

### 2. The Preserved Blueprint

A reusable record of how the thing was built.

### 3. The Extracted Pattern

A generalized asset that makes future projects faster.

That is the real leverage.

120x.ai does not just build software.

It builds the system that builds the software.

---

## Operating Principle

> Think in the Architect Layer. Build in the Builder Layer. Trust the folder, not the chat thread.

