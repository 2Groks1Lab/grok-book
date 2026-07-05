# BATCH_LIMIT_RULE.md

**Rule:** Default batch size limit for any list-based processing.

**Default Limit:** 10 items at a time.

**Scope:** This rule applies to *any* list-based work, including but not limited to:
- File operations (delete, move, rename, archive)
- Content processing (jokes, memes, glossary terms, workflow notes)
- Cross-instance handoffs
- Any other task involving multiple discrete items

**Rationale:**
- 10 is a practical balance between speed and safety.
- It prevents runaway operations when the filesystem or quota is unstable.
- It keeps batches small enough to review and correct if something goes wrong.
- It generalizes beyond just file deletions (as requested).

**How It Works in Practice:**

| Your Instruction                    | What I should do                              |
|-------------------------------------|-----------------------------------------------|
| "Delete these 12 files"             | Do 10, then ask before doing the remaining 2  |
| "Process the next 7"                | Do all 7 (under the limit)                    |
| "Do the next 15"                    | Do 10, then ask before continuing             |
| No number given + long list         | Default to max 10 per round                   |
| "Big batch, go for 25"              | Only do this if you explicitly override       |

**Override:**  
You can always explicitly override the limit by saying something like:
- "Do the next 20"
- "Big batch, go for 30"
- "Ignore the 10 limit on this one"

**Status:** Active rule. Created July 3, 2026.

---

**Related Rules:**
- `??? Signal` (attention flagging)
- File system stability checks before large operations