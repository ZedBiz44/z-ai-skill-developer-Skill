# SOP-to-Skill Framework

Use this reference when creating or reviewing an SOP, converting an SOP into a skill, or checking whether an operational procedure contains enough information to automate safely.

## Required Operating Information

Capture:

- **Who:** stable responsible roles; use individual names only when the identity itself is essential.
- **What:** objective, expected output, and successful outcome.
- **When:** trigger, schedule, frequency, event, and timezone when relevant.
- **Where:** exact tools, accounts, repositories, servers, paths, databases, websites, and environments needed for execution.
- **Why:** current business or operational reason and the risk prevented.
- **Scope:** included work, excluded work, and systems that must not change.
- **Source of truth:** authoritative technical and operational locations.
- **Inputs and access:** permissions, prerequisites, secure credential references, data, and files.
- **Outputs:** deliverable, format, storage location, and recipient.
- **Procedure:** actions in execution order with real decision points.
- **Responsibilities:** human and AI labels only where duties differ.
- **Failure and escalation:** retry limits, stop conditions, rollback, and approver.
- **Verification:** observable evidence proving the objective was achieved.
- **Completion record:** evidence to save, where to save it, and who receives the result.

## Conversion Rules

- Preserve organization-specific systems and paths when they are required to execute the procedure.
- Replace incidental individual names with stable roles.
- Remove historic incidents, temporary status, completed migration progress, and chat-history wording unless they explain a current restriction.
- Move changing inventories and project status to tracking records.
- Separate universal method from the adopting organization's implementation profile.
- Convert repeated deterministic actions to scripts only when automation reduces error or repetition.
- Keep secrets out of both the SOP and the skill.

## Source-of-Truth Rule

Store executable skill files in version control. Store operational explanations, approvals, and summaries in the organization's documentation system. Link operational documentation directly to the authoritative skill file instead of copying its contents.

## Verification Questions

- Can a qualified person or AI agent execute the procedure without guessing?
- Are the exact systems and environments identified?
- Are approval gates and stop conditions explicit?
- Does the skill preserve the SOP's real business purpose?
- Is changing status kept outside the evergreen procedure?
- Is the final evidence sufficient to prove success?
