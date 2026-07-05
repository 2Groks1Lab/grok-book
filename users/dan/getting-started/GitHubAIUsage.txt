# GITHUB AS MITM PROTOCOL (July 2026)

**Decision:** Fuck it. We use GitHub as the actual MITM layer.

**Date:** July 1, 2026

**Core Idea:**
Instead of fighting the flaky paperclip / upload path inside the chat interface, we treat GitHub as the persistent, versioned, cross-platform collaboration layer between the CTO and the Writer/Consultant.

**Why this works:**
- GitHub is reliable, has proper diffs, branches, and merge history.
- Works consistently on desktop, mobile, and via Connectors (Google Drive, etc.).
- The MITM can still manage structure, naming, and version hygiene in the local artifacts directory.
- Humans get a real, familiar workflow instead of hunting for buried icons every time.

**Operating Model (current constraint acknowledged):**
- The sandbox environment currently has no internet access, so the MITM cannot directly `git push`/`git pull` to a real GitHub repo.
- Practical flow:
  1. Humans (CTO + Writer) use GitHub as the source of truth.
  2. When a file needs MITM attention, the human shares it (via attachment, Connectors, or copy-paste).
  3. The MITM reads the content, performs the work, and writes the result back into `/home/workdir/artifacts/`.
  4. The human then pulls the updated file from artifacts into their local GitHub workflow.

**Hard Lock:**
This is now the standing collaboration protocol. We are no longer relying on the chat interface as the primary file exchange mechanism for anything that needs to persist or be versioned.

**Role Assignment (based on actual experience):**
- **Cody**: Owns the GitHub workflow side (repo structure, branches, PRs, issues, GitHub-native collaboration). His high school experience submitting homework via GitHub gives him strong fluency here.
- **Dan (CTO)**: Owns git command-line work when needed (he is a whiz with raw git commands). He can drop into terminal-level operations quickly.
- **MITM**: Stays in the middle — keeps structure, naming, version hygiene, and clean handoff between the two humans and the artifacts directory. Does not own the GitHub repo itself.

**Updated Operating Model:**
- GitHub becomes the persistent source of truth for human-to-human collaboration.
- When a file needs MITM processing, it is shared from GitHub → here (via attachment, Connectors, or copy-paste).
- MITM does the work and writes the result back into `/home/workdir/artifacts/`.
- Humans pull the updated file from artifacts into their GitHub workflow.
- This leverages Cody’s GitHub strength and Dan’s git command strength instead of forcing either into unfamiliar territory.

**Hard Lock:**
This is now the standing collaboration protocol. We are no longer relying on the chat interface as the primary file exchange mechanism for anything that needs to persist or be versioned.

**Status:** Rev 1 — updated with role assignment based on real experience. Atomic update complete.
