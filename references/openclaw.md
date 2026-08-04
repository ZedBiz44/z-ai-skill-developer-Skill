# OpenClaw Adapter

Use this reference when creating, updating, testing, or publishing an OpenClaw skill.

## Shared Compatibility

- Use lowercase letters, digits, and hyphens for `name`.
- Align the directory name and frontmatter name.
- Keep the description to one line and under 160 characters.
- Use only `name` and `description` in the shared cross-platform core.
- Add OpenClaw-only frontmatter such as command dispatch, gating, or homepage fields only to an intentionally OpenClaw-specific package.

## Placement and Discovery

- Inspect the current OpenClaw skills roots and loading precedence before deployment.
- Workspace skills commonly live under `~/.openclaw/workspace/skills/`.
- Verify discovery with `openclaw skills list`.
- Test in a new session or restart the gateway when the current session has cached skill metadata.

## Skill Workshop

- Use Skill Workshop proposals for agent-drafted skills when the organization requires governed review before the skill goes live.
- Use `propose-create` for a new skill and `propose-update` for an existing skill.
- Keep `PROPOSAL.md` at the root of a proposal directory when support files are included.
- Inspect and evaluate the proposal before applying it.
- When mandatory human approval is required, verify the actual Workshop configuration enforces the approved pending-review policy; wording in an SOP is not enforcement.
- Keep proposal-only status and version fields out of the final shared `SKILL.md`.

## Testing and Publication

- Test locally with representative prompts before publishing.
- Confirm expected prompts trigger the skill and unrelated prompts do not.
- Review shell commands and untrusted input for command-injection risk.
- Use the current ClawHub publishing workflow only after ownership, version, source, and approval are confirmed.
