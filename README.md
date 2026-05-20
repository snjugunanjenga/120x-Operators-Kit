# 120x Operators Kit

A complete operating system for turning messy business workflows into production software using AI — from **120x.ai**.

This kit gives you the methodology, prompts, and tools to run real projects with the same discipline a 35+ project consultancy uses.

---

## What's in the kit

```text
120x-Operators-Kit/
├── README.md                                ← you are here
├── 120x-architect-builder-philosophy.md     ← the methodology, in full
├── 120x-project-scaffold-instructions.md    ← the spec your Builder reads
├── 120x-quickstart.md                       ← the four-step workflow
├── scaffold.sh                              ← optional: one-command structure setup
└── prompts/                                 ← all 7 prompts as standalone files
    ├── 01-architect-pack.md
    ├── 02-architect-tighten.md
    ├── 03-builder-scaffold.md
    ├── 04-builder-populate.md
    ├── 05-sprint-start.md
    ├── 06-sprint-completion.md
    └── 07-architect-kickoff.md
```

That's it. Twelve files. No software to install, no accounts to create — assuming you already have access to Claude Chat (or ChatGPT) and Claude Code (or Codex/Cursor).

> **A note on file types.** Every planning file in this kit is a `.md` (Markdown) file. We use Markdown because it's plain text that survives any tool change, every code editor and AI agent reads it cleanly, and the structure (headers, lists, code blocks) helps both you and the AI navigate. You don't need to learn Markdown to use the kit — the AI tools handle it for you.

---

## Two Tools, Two Roles

Before anything else, get this distinction clear. Most of the confusion people hit when starting with this method comes from blurring these two tools.

### The Architect — your reasoning model

This is the AI that thinks with you. **It lives in your browser.** When you talk to the Architect, you're typing in a chat window — Claude Chat (claude.ai) or ChatGPT (chat.openai.com).

The Architect's job is to interview you about your workflow, ask the right questions, and produce written planning documents — requirements, blueprint, acceptance criteria — in the chat window. It does not touch your computer. It does not write code. It does not create files on disk. It writes text.

You read what it produces, push back when it's wrong, and copy what's good.

**Examples of Architect tools:**
- Claude Chat — browser, claude.ai
- ChatGPT — browser, chat.openai.com
- Gemini — browser, gemini.google.com

### The Builder — your coding agent

This is the AI that builds for you. **It runs on your computer**, inside (or alongside) a code editor or terminal. When you talk to the Builder, you're working inside an app that has access to a folder on your machine — and that's where it creates files, writes code, and runs commands.

The Builder's job is to read the planning files the Architect produced, then create the actual project structure and write the code that matches the plan. It does not redefine the scope. It does not invent business rules. It builds what the planning files specify.

**Examples of Builder tools:**
- Claude Code — runs in your terminal, points at a folder
- Codex — coding agent in the OpenAI ecosystem
- Cursor — code editor with built-in AI; opens a folder
- Windsurf — similar to Cursor

### How they work together

```text
┌─────────────────────────┐         ┌─────────────────────────┐
│   THE ARCHITECT         │         │   THE BUILDER           │
│   (in your browser)     │  ─────▶ │   (on your computer)    │
│                         │ folder  │                         │
│   Claude Chat /         │  with   │   Claude Code /         │
│   ChatGPT               │  files  │   Codex / Cursor        │
│                         │         │                         │
│   Thinks. Plans.        │         │   Builds. Implements.   │
│   Writes documents.     │         │   Creates files.        │
└─────────────────────────┘         └─────────────────────────┘

       YOU direct both. YOU verify the output.
```

You — the operator — sit between them. You give the Architect context about your business, you read what it produces and push back where needed, and you hand the approved planning documents to the Builder. Then you verify the Builder's output before calling anything done.

**The handoff between them is a folder, not a conversation.** You'll see this phrase repeated throughout the methodology. It means: don't expect the Architect and Builder to talk to each other directly. They don't. *You* move the artifacts from one to the other.

This separation is the entire point of the method. When you blur it — when you ask one tool to do both jobs — that's when AI builds fail.

---

## What you'll need

Before you start, make sure you have access to:

- **A reasoning model** for the Architect role — Claude Chat (claude.ai) or ChatGPT. Either subscription tier works.
- **A coding agent** for the Builder role — Claude Code, Codex, or Cursor. This is the tool that actually creates files on your computer.
- **A folder on your computer** where your projects will live. Anywhere works — a `Projects/` folder in your home directory is fine.

If you have all three, you're ready.

---

## Setup — Five minutes, one time

This setup happens once. After it, every new project takes seconds to start.

### 1. Pick a "factory" folder on your computer

This is where all your future builds will live. Create a folder somewhere you'll remember. For example:

```text
~/Documents/120x-builds/
```

Inside that folder, your projects will eventually look like this:

```text
~/Documents/120x-builds/
├── quarterly-rebates/        ← a project
├── inventory-cleanup/        ← another project
└── monthly-reporting/        ← another one
```

### 2. Unzip this kit somewhere accessible

You don't need to put it inside the factory folder. Anywhere works — even your Desktop. You just need to be able to find these files when the prompts ask for them.

### 3. Open your coding agent in the factory folder

If you're using **Claude Code**, open it and point it at `~/Documents/120x-builds/`.

If you're using **Cursor**, open Cursor and use *File → Open Folder* → select `~/Documents/120x-builds/`.

If you're using **Codex** in a Codex environment, the equivalent is whatever your Codex setup uses to specify the working directory.

The Builder needs to know which folder it's working in. That's the folder it'll create your projects inside.

### 4. Set up a Claude Chat or ChatGPT Project for the Architect

Both Claude Chat and ChatGPT have a feature called "Projects" (or "Custom GPTs" / "Workspaces" — naming varies). A Project is a persistent space where you can upload reference documents that the AI consults on every conversation in that Project.

Create a new Project. Call it something like *"120x Architect"*. Upload these three files from the kit into the Project's sources:

- `120x-architect-builder-philosophy.md`
- `120x-project-scaffold-instructions.md`
- `120x-quickstart.md`

Now, every conversation in that Project automatically has the philosophy as context. You won't have to re-upload these for every project.

Setup is done. Now you can run projects.

---

## Running your first project

Here's the four-step workflow with the average user in mind. Every step has a prompt in `prompts/` you can copy and paste.

### Step 1 — Add project-specific context to your Architect Project

Open your "120x Architect" Project (the one you set up above). Start a new conversation in it.

Upload the project-specific context — anything relevant to the workflow you want to automate:

- Sample data files (Excel, CSV, PDF)
- Notes from a conversation with the person who does the work
- Screenshots of the current process
- A proposal or scope document if you have one
- Emails or Slack threads about the workflow

You don't need everything. The Architect will ask if it needs more.

### Step 2 — Generate the Architect Pack

Paste **Prompt 01** (`prompts/01-architect-pack.md`) into the conversation.

The Architect will read everything — the philosophy docs in the Project sources, plus your project-specific context — and produce first drafts of:

- The project's `AGENTS.md`, `STATE.md`, `DECISIONS.md`, `DOMAIN.md`, `RISKS.md`, `QUESTIONS.md`
- Sprint 001 (Discovery & Architecture) `requirements.md`, `blueprint.md`, `acceptance.md`, `handoff-prompt.md`
- Optional: `ARCHITECTURE.md`, `DATA_MODEL.md`, `VALIDATION.md`

Read what comes back. Push back where it's wrong. *"The threshold is $5, not $50."* The Architect will rewrite. Iterate until the docs match reality.

If the first pack feels generic or padded, paste **Prompt 02** (`prompts/02-architect-tighten.md`) to tighten it.

### Step 3 — Create the project folder structure

Now you need to get the Architect's documents onto your computer in the right structure. Two ways to do this:

**Option A — Use the included scaffold script (fastest).** Open Terminal (Mac) or Command Prompt (Windows). Navigate to your factory folder and run the script with your project name:

```bash
cd ~/Documents/120x-builds/
bash /path/to/120x-Operators-Kit/scaffold.sh quarterly-rebates
```

This creates an empty `quarterly-rebates/` folder with all 26 files in the right structure.

**Option B — Have your Builder do it.** Paste **Prompt 03** (`prompts/03-builder-scaffold.md`) into Claude Code or your coding agent. Update the variables at the top with your project name and path. The Builder will read `120x-project-scaffold-instructions.md` and create the structure.

Either option produces the same result.

### Step 4 — Populate the project folder with the Architect's content

Paste **Prompt 04** (`prompts/04-builder-populate.md`) into your Builder. At the bottom of the prompt where it says `[PASTE_ARCHITECT_OUTPUT]`, paste everything the Architect produced in Step 2.

The Builder fills the empty files in your project folder with the planning content.

### Step 5 — Run sprints

Sprint 001 is already done — the Architect produced the discovery artifacts. So your first build sprint is Sprint 002.

For every sprint:

- **At the start:** paste **Prompt 05** (`prompts/05-sprint-start.md`) into the Builder. Update the `[SPRINT_FOLDER]` variable. The Builder summarizes what it understands before writing code. Approve before it starts.
- **At the end:** paste **Prompt 06** (`prompts/06-sprint-completion.md`). The Builder reviews the work against the acceptance criteria honestly and reports what's done and what isn't. Don't accept "done" until the criteria pass.

Repeat until the system ships.

---

## A few honest notes

**The first project takes longer than you'd expect.** You're learning the rhythm of the methodology. The second is meaningfully faster. By the fifth, it's a habit.

**You will get something wrong on the first try.** The Architect will misunderstand a business rule. The Builder will skip a test. Validation will catch it. That's normal. Re-run the relevant prompt with corrected context.

**You don't have to do all four steps perfectly.** The methodology survives imperfection. What it doesn't survive is skipping steps entirely — especially Sprint 001 (Discovery) and validation at the end. Those are non-negotiable.

**Keep your Architect Project for the long term.** Every new project you start, just open a new conversation inside it. The philosophy docs are already there. You only have to upload the new project's context.

---

## The core principle

> The handoff is a folder, not a conversation.

Tools change. Models reset. Chat threads get long and lose context. A folder of well-organized planning files survives all of that and lets any AI agent — current or future — pick up the work.

The Architect (Claude Chat / ChatGPT) thinks. The Builder (Claude Code / Codex) builds. You direct both.

---

## Need help?

If you read this kit and decide you'd rather have us build the system for you, that's what 120x.ai does. We're a solo software factory delivering production internal tools for mid-market companies.

→ [Visit 120x.ai](https://120x.ai)
→ [Book a discovery call](https://calendly.com/120x-ai/30min)

---

## License & attribution

Free to read, use, share, and adapt for your own projects. Attribution to 120x.ai is appreciated but not required. Please don't republish the kit as your own work.

**© 2026 120x.ai · R-Cubed Holdings LLC**
