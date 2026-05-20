# Prompt 06 — Sprint Completion

**Use with:** The Builder agent when it claims the sprint work is complete.

**When to use:** Before you accept "done" from the Builder. This prompt forces an honest report against acceptance criteria.

**What it does:** Stops the Builder from declaring victory prematurely. Surfaces incomplete items, new decisions, and follow-up work.

---

## The Prompt

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
