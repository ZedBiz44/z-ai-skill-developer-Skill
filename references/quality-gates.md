# Skill Quality Gates

## Authoring Gate

- Purpose, users, target platforms, triggers, inputs, outputs, and ownership are clear.
- Existing overlapping skills were checked.
- Skill versus plugin, tool, service, hook, or automation was decided.
- The organization profile identifies the source of truth and approval process.
- A per-skill implementation profile identifies the owner, identifier, platforms, pilot, approval, and completion evidence.

## Structure Gate

- Folder and `name` match in the deployable package.
- Shared frontmatter contains only `name` and `description`.
- Description explains what the skill does and when to use it.
- `SKILL.md` is under 500 lines and contains no TODO placeholders.
- Detailed material is routed to directly linked resources.
- The authoring repository and deployable package are separated when the repository contains operational records or auxiliary documentation.
- The deployable package contains only runtime-required files.
- No competing copy of the authoritative skill exists in operational documentation.

## Safety Gate

- No secrets or complete environment files are present.
- Third-party source and license are recorded.
- Code execution, external content, transfers, and untrusted input were reviewed.
- Destructive and production-impacting actions require approval.
- The completed security and rollback review identifies source boundaries, execution boundaries, last known-good artifact, rollback owner, and removal procedure.
- Failure, escalation, and rollback conditions are explicit.

## Test Gate

- Structural validator passes against the generated deployable package.
- Target-platform validator passes when available.
- Clear positive triggers pass.
- Paraphrased positive triggers pass.
- Boundary and negative triggers do not activate incorrectly.
- Referenced files exist.
- Bundled scripts execute successfully.
- Discovery and behavior pass in a fresh session using the current commit or release.
- The pilot and trigger-test record captures prompts, expected behavior, actual results, evidence, and rollback readiness.

## Publication Gate

- Human or organizational approval is recorded when required.
- The tested deployable package matches the committed source version.
- The release or commit is identifiable.
- Pilot deployment succeeds before broader rollout.
- Operational documentation links to the authoritative `SKILL.md`.
- Completion evidence is stored in the designated tracking systems.
