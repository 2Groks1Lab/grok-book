# Policy: Do Not Use `yes`

**Status:** Active  
**Applies to:** All scripts, automation, and day-to-day work

## Rule

**Do not use the `yes` command** in scripts or automation.

This includes patterns like:

```bash
yes | some-command
yes | sudo some-command