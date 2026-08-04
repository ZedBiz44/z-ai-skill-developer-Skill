---
name: z-sop-framework
description: Create, rewrite, consolidate, or review clear, complete, evergreen ZedBiz SOPs that humans and AI agents can execute.
---

# Z SOP Framework

Write clear, complete, evergreen SOPs that people and agents can actually follow. Keep explanations short, practical, and focused on execution.

## Required SOP Content

Include:

- **Metadata:** Last Updated Date, Author or Agent, and Status.
- **Who:** The responsible role. Use role names unless a specific person or agent is essential.
- **What:** The objective, expected outcome, and definition of successful completion.
- **When:** The exact trigger, schedule, frequency, or event. Include the timezone when time matters.
- **Where:** The server, tool, platform, account, project, repository, file path, database, website, and live, staging, or test environment that apply.
- **Why:** The current business or operational reason and the risk or inconsistency the SOP prevents.
- **Scope:** What the SOP covers, what is outside its scope, and any systems, files, settings, or processes that must not be changed.
- **Source of Truth:** Where the correct current technical and operational information lives.
- **Required Access and Inputs:** Permissions, prerequisites, credentials by secure reference only, data, files, and other starting requirements.
- **Outputs:** The required deliverable, format, storage location, and recipient.
- **Steps:** Clear actions in execution order.
- **Human and AI Responsibilities:** Label role-specific actions only where responsibilities differ.
- **Failure and Escalation:** Retry limits, stop conditions, rollback or safe-state actions, and escalation path.
- **Verification:** Evidence that proves the final objective was achieved.
- **Completion Record:** What evidence must be saved, where it is recorded, and who receives the result.

## Technical Accuracy

For technical SOPs:

- Use safe read-only checks to confirm current paths, versions, services, commands, startup methods, networks, and runtime behaviour before relying on them.
- Respect the assigned operating mode. In Diagnose Mode, do not make changes while verifying.
- Check related SOPs and authoritative records for contradictions.
- Resolve or clearly flag disagreements about paths, tools, networks, startup methods, permissions, or operating details.
- Do not invent missing paths, names, commands, identifiers, or technical details.
- Mark unverified information clearly and identify how it must be confirmed.

## Security

- Never expose passwords, tokens, private keys, credentials, complete environment files, or other secrets.
- Refer to the approved secret manager, vault item, or secure retrieval process instead of copying secret values.
- State required permissions and approval gates.
- Identify destructive or production-impacting actions and the conditions that require stopping for approval.

## Human and AI Steps

- Keep the procedure in one SOP unless separate procedures are genuinely easier to execute and verify.
- Use `[Human]` and `[AI Agent]` only where responsibilities differ.
- Split the SOP only when each part has its own distinct inputs, actions, and verification and can stand alone without duplicating substantial context.
- When uncertain, keep one merged SOP with clear inline role labels.

## Notion Alignment

When the SOP is stored in Notion:

- Ensure the page date, author or agent, and status match the database properties.
- Use the correct parent page or database and preserve required relations.
- Do not claim database alignment unless the properties were checked.

## Evergreen Rules

- Write for what must be done now and going forward.
- Remove obsolete instructions, temporary results, expired incidents, historical clutter, chat-history wording, and changing fleet snapshots.
- Keep past context only when it explains a current decision, restriction, or verification requirement.
- Use stable roles instead of unnecessary person or agent names.

## Related SOPs

- Keep related SOPs consistent.
- Create one shared overview only when several procedures genuinely share the same context.
- Keep specific actions and verification in the individual procedure.
- Avoid duplicated instructions that can drift into conflicting versions.

## Final Checklist

Before delivering or saving the SOP, confirm:

- Who, What, When, Where, Why, Scope, and Source of Truth are clear.
- Access, inputs, outputs, steps, role responsibilities, failures, and verification are complete.
- Current technical details were checked when required.
- Related SOPs do not contradict this procedure.
- Secrets are protected and approval gates are explicit.
- Completion evidence, storage location, and recipient are stated.
- Notion metadata matches database properties when applicable.
- Obsolete and temporary information was removed.
- No missing information was invented.
