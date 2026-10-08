---
name: arcanoria-handoff
description: The common protocol every agent (Claude Code, Codex, Hermes, Antigravity/Gemini, any other) follows to continue another agent's unfinished work in the Arcanoria repositories, and to leave its own work so the next agent resumes in minutes. Use when the author says "finish / continue / resume this agent's work", pastes another agent's prompt, transcript or log, when a session was cut (usage limit, crash, timeout, context reset), and before stopping any work that is not finished.
version: 1.0.0
author: Adassio ST
license: proprietary
platforms: [windows, linux, macos]
metadata:
  hermes:
    tags: [handoff, resume, continuation, multi-agent, evidence, arcanoria]
    related_skills: [arcanoria-canon, arcanoria-delegation]
---

# Arcanoria — Resuming and Handing Off Work

Several agents work in the same checkouts, and sessions end mid-task. The author then pastes
their prompt and the previous agent's log into a fresh agent and says "finish this". This skill
is the shared language for that moment: how to read what you were given, how to rebuild the
real state from disk, and how to leave a trail so the next resume is cheap.

The repository's own `AGENTS.md` still governs (scope, invariants, gates, shared files). This
skill only adds the continuation discipline. Paths and commands below use the Unity project as
the worked example; the steps are the same in every repository.

## Vocabulary

| Term | Meaning |
| --- | --- |
| **Paste** | What the author hands you: their own prompt(s) plus another agent's transcript or log. Almost always clipped. |
| **Cut** | Why the previous agent stopped: usage limit, crash or timeout, context reset, deliberate handoff, author interruption. |
| **Footprint** | Everything the previous agent left: edited and new files, logs and results, scratch tools, tracker entries, memory notes. |
| **Lead** | Any claim from the paste or a report ("tests pass", "cleaned up", "done"). Worth checking, never proof. |
| **Evidence** | A command *you* ran on the current tree, with its counts, exit code, date and result path. |
| **Checkpoint** | A dated "in progress" line the working agent keeps in the task's tracker entry. |
| **States** | Built → Verified (automated gate, with evidence) → Accepted (the author, by hand). Never merge them. |

## 1. Read the paste (the hardest part)

1. **Separate the author from the agent.** The author's words are the instruction; the agent's
   narration is leads. Pastes interleave them, and the author often quotes the agent's question
   and answers it in the same line. Read the quoted question as the *scope* of the answer.
   Example: *"Tackle this next so that it stops being a square: Decision for you: the Auric
   square comes from … Do you want me to tackle it next?"* means: yes, do the proposal, exactly
   as the agent described it (including the side effects it named).
2. **Find the cut.** "Session limit reached", "context window", a tool call with no result, or
   "Ran N commands" with no outcome mean the agent stopped mid-step. Any run it had started
   (a test batch, a build, a server) died with it unless it was detached.
3. **Assume the paste lags the disk.** Transcripts collapse tool output and are often copied
   only in part. The agent usually did more than the paste shows. Real case: the paste ended at
   "checking how large files are handled"; on disk the agent had finished the feature, fixed
   two unrelated failures, written its art review into the backlog and been cut during the final
   test run.
4. **Write the ask list, but fill in its status only after section 2.** One line per author
   request: done / partly done / not started / blocked on the author.

## 2. Rebuild the real state from disk, before editing anything

Use the sources in this order (most reliable first):

1. **The tracker entry** for the task (Unity: `Docs/Planning/API_BACKLOG.md`; Sonata: the batch
   board and `.agents/` tickets). Look for its ID, "follow-up" paragraphs, checkpoint lines and
   **Evidence** lines. A follow-up without an Evidence line means work done, verification
   unfinished. An "open decision" the follow-up already settled is stale text to fix.
2. **The file timeline** since the session started. Clusters of modification times are one
   agent's footprint, and their order should match the narration. The last writes show where it
   stopped.
   ```bash
   find Assets Docs Tools -type f -newermt "2026-10-03 18:00" -printf '%TY-%Tm-%Td %TH:%TM  %p\n' | sort | tail -60
   ```
   ```powershell
   Get-ChildItem Assets,Docs,Tools -Recurse -File | Where-Object LastWriteTime -gt (Get-Date).AddHours(-8) |
     Sort-Object LastWriteTime | Select-Object -Last 60 LastWriteTime, FullName
   ```
3. **The evidence folder** (`Logs/<task>-<date>/`). A log without its result file is a run that
   was killed. A result file older than the last source edit is stale. Read the failures of the
   newest complete result; they are usually the work the agent was doing when cut.
4. **Memory and scratch.** Memory notes may carry the previous session's id
   (`originSessionId`). Claude scratchpads live under
   `%LOCALAPPDATA%\Temp\claude\<project>\<session-id>\scratchpad` and often hold reusable
   harnesses (offline previews, profilers). Copy them into your own scratch; never edit theirs.
5. **Temporary files in the tree** (headers such as "TEMPORARY … delete after use").
6. **git**: `git status --short`, `git diff --stat`. New untracked files have no diff and no
   baseline: back them up before you edit them.

Then decide ownership. The footprint is the task you inherit. Every other modified file is
another agent's work in progress: leave it alone, as `AGENTS.md` says.

## 3. Check the environment yourself

- **Locks.** Unity: only a `Unity.exe` under `Hub\Editor\<version>` is the Editor; the Hub's
  `Unity Hub\resources\unity.exe serve` is not. `Temp/UnityLockfile` existing proves nothing;
  test whether it is held:
  `try { [IO.File]::Open($lock,'Open','ReadWrite','None').Close(); 'free' } catch { 'held' }`.
- **Other agents.** Fresh writes outside the footprint in the last minutes mean someone is
  working. Do not start a batch run on a project they hold.
- **Runs from the cut** are dead unless a process proves otherwise.

## 4. Re-verify; never inherit a verdict

- Re-run the gates on the current tree. Old results are not evidence once any source changed
  after them (compare times).
- Use the same flags as the result you compare with. Flags change counts: Unity `-nographics`
  makes the GPU art suites skip themselves (0 skipped becomes 48).
- A failure that appears after the inherited change belongs to the inherited task, even in
  another system (the organic Auric outline pushed the ecology Echo past its time budget). Find
  the cause; do not loosen the test.
- Check the previous agent's claims ("cleaned up", "passes", "byte-identical") before repeating
  them. A temp test reported as cleaned up was still in the tree.

## 5. Finish, then close the paperwork

- Fix the stale statements the inherited work resolved (open decisions, "Remaining" lists).
- Remove temporary helpers once their output is saved (back them up first); evidence stays in
  the ignored logs folder.
- Write the Evidence line and the handoff report (formats below).

## 6. While you work: leave a trail

The next agent will be in your position. Make the reconstruction take minutes:

- **Claim** in your first message: the task, the files in scope, what is out of scope.
- **Checkpoint** before any step that takes more than a couple of minutes (a test batch, a long
  build, a large refactor), and whenever the plan changes. One line in the task's tracker entry:
  `*In progress (2026-10-03 22:50, Claude Code):* full EditMode running -> Logs/continent-20261003/final2-editmode.xml; next: evidence line, remove ZzContinentShotsTemp, update memory.`
  Replace it with the Evidence line when done; never leave two.
- **Evidence names** say the task and purpose (`Logs/<task>-<yyyymmdd>/<purpose>-editmode.xml`);
  never overwrite earlier evidence.
- **Temporary files** carry a header:
  `TEMPORARY (<task>, <agent>, <date>): <why>. Delete after <condition>.`
- **Reusable scratch tools**: name their path in memory or the handoff.
- **Back up** a file before editing it when it is untracked or shared.
- **Report the cut early.** If you are about to run out (limits, context), stop starting new
  steps and write the checkpoint and a short handoff first.

## 7. Formats

**Evidence line** (in the tracker entry):

    **Evidence (<date>; HEAD <sha>, <tree state>, <runtime/version>):** <exact command> <counts> (exit <n>), <result path>. Not done: <what and why>.

**Handoff report** (end of every session, and before an expected cut):

1. *Where it stood* (resumes only): one paragraph on what the previous agent had done and where it was cut.
2. *Changed*: files and behaviour.
3. *Checks*: command, counts, exit code, result path.
4. *Not verified*, and why.
5. *Decisions taken for the author*, and where they are recorded.
6. *Next steps*, in order, and housekeeping for other agents.

## 8. For the author: the resume prompt

"Finish up this agent's work:" plus the paste is always enough. A header saves the first
minutes and removes guesswork:

```
RESUME: <task name or tracker ID>        Repo: <path>
Previous agent: <Claude Code | Codex | Hermes | Antigravity> (<session id if known>)   Cut: <usage limit | crash | handoff>
My asks (verbatim): 1. …  2. …
Answers to its open questions: …
Log: <paste>
```

Without a header, the receiving agent fills these fields in itself (section 1) and states them in
its first message, so the author can correct a misreading at once instead of mid-task.

## 9. Pace

Tracker, timeline and evidence folder usually answer "where did it stop?" in under ten minutes.
Say it in one short paragraph, then continue. Ask the author only about what the disk cannot
answer (canon, design numbers, deleting or publishing).
