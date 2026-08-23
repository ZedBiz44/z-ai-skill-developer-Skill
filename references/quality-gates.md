# Skill Quality Gates (Proportional)

Quality is defined by applying the right level of process to the risk of the skill. **Do not apply Fleet/Public gates to Lean skills.**

## 1. Universal Gates (All Skills)

- **Purpose:** The primary job, triggers, and ownership are clear.
- **Overlap:** Existing skills were checked to prevent duplication.
- **Form:** Folder and `name` match. Shared frontmatter contains only `name` and `description`.
- **Length:** `SKILL.md` targets 80-150 lines and strictly does not exceed 500 lines.
- **Safety:** No secrets or complete environment files are present.
- **Source of Truth:** One authoritative copy exists in GitHub. No competing executable copies exist in Notion.
- **Verification:** The skill works for its primary intended use case on the target platform.

## 2. Operational Gates (Skills running commands, writing files, calling APIs)

*Requires all Universal Gates, plus:*
- **Boundaries:** Code execution, external content, and untrusted input were reviewed.
- **Approval:** Destructive and production-impacting actions explicitly require human approval.
- **Failure Handling:** Stop conditions and escalation paths are defined for the risky steps.

## 3. Fleet / Public Gates (Classified High Risk Or Wide Rollout)

Apply this tier when the combined risk and rollout decision warrant formal governance. Paid-provider use or client delivery should trigger a budget, authority, sensitivity, reversibility, and impact check; neither automatically requires this tier. Ordinary model or agent-runtime charges do not count as Fleet/Public money handling.

*Requires all Universal and Operational Gates, plus:*
- **Profiles:** A per-skill implementation profile is completed.
- **Security:** A formal security and rollback review is completed and approved.
- **Packaging:** The authoring repository and deployable `dist/` package are separated.
- **Testing Matrix:** Positive, paraphrased, boundary, and negative triggers are explicitly tested in a fresh session.
- **Pilot:** A pilot and trigger-test record captures the expected behavior, actual results, and rollback readiness before wider rollout.
