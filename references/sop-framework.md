# SOP-to-Skill Framework

Use this reference when converting an SOP into a skill. 

**Crucial Rule:** Do not force every SOP detail into the executable skill. The skill provides the "go east and check the map" principles. The detailed SOP remains in Notion for human reference or advanced escalation.

## Information Categories (Thinking Checklist)

Consider these categories when analyzing an SOP, but **only extract the non-obvious guidance the agent needs at runtime**. Do not create mandatory sections for all of these in the skill.

- **Who:** stable responsible roles.
- **What:** objective, expected output, and successful outcome.
- **When:** trigger, schedule, frequency.
- **Where:** exact tools, accounts, paths, and environments.
- **Why:** current business reason and risk prevented.
- **Scope:** included work, excluded work.
- **Inputs and access:** permissions, prerequisites, data.
- **Outputs:** deliverable, format, storage location.
- **Procedure:** actions in execution order with real decision points.
- **Failure and escalation:** retry limits, stop conditions.
- **Verification:** observable evidence proving success.

## Conversion Rules

- **Extract, don't copy:** Extract only what a capable agent would get wrong without the skill.
- Preserve organization-specific systems and paths when required.
- Remove historic incidents, temporary status, and chat-history wording.
- Keep secrets out of both the SOP and the skill.

## Source-of-Truth Rule

Store executable skill files in version control. Store operational explanations, approvals, and summaries in the organization's documentation system (e.g., Notion). Link operational documentation directly to the authoritative skill file instead of copying its contents.
