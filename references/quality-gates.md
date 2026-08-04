# Skill Quality Gates

## Authoring Gate

- Purpose, users, target platforms, triggers, inputs, outputs, and ownership are clear.
- Existing overlapping skills were checked.
- Skill versus plugin, tool, service, hook, or automation was decided.
- The organization profile identifies the source of truth and approval process.

## Structure Gate

- Folder and `name` match.
- Shared frontmatter contains only `name` and `description`.
- Description explains what the skill does and when to use it.
- `SKILL.md` is under 500 lines and contains no TODO placeholders.
- Detailed material is routed to directly linked resources.
- No competing copy of the authoritative skill exists in operational documentation.

## Safety Gate

- No secrets or complete environment files are present.
- Third-party source and license are recorded.
- Code execution and untrusted input were reviewed.
- Destructive and production-impacting actions require approval.
- Failure, escalation, and rollback conditions are explicit.

## Test Gate

- Structural validator passes.
- Target-platform validator passes when available.
- Clear positive triggers pass.
- Paraphrased positive triggers pass.
- Boundary and negative triggers do not activate incorrectly.
- Referenced files exist.
- Bundled scripts execute successfully.
- Discovery and behavior pass in a fresh session.

## Publication Gate

- Human or organizational approval is recorded when required.
- The tested files match the committed version.
- The release or commit is identifiable.
- Pilot deployment succeeds before broader rollout.
- Operational documentation links to the authoritative `SKILL.md`.
- Completion evidence is stored in the designated tracking systems.
