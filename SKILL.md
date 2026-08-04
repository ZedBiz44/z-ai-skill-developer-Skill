---
name: z-ai-skill-developer
description: Create, update, audit, validate, repair, or convert SOPs and workflows into reusable AI skills for Codex, OpenClaw, and Hermes.
---

# Z AI Skill Developer

Build clear, reusable, secure skills from business requirements, workflows, SOPs, or existing skill files. Keep one authoritative technical copy in version control and adapt only the platform-specific parts.

## Core Workflow

### Establish the Assignment

- Confirm whether the request is to create, update, audit, validate, repair, migrate, or publish a skill.
- Confirm the intended users, business outcome, target platforms, deployment locations, and approval requirements.
- Inspect the adopting organization's implementation profile. Use [the organization profile template](assets/organization-profile-template.md) when no profile exists.
- Identify the technical and operational sources of truth before editing anything.
- Respect the assigned operating mode. Keep investigation read-only when approval is required before changes.

### Inspect Before Designing

- Read any existing skill, SOP, scripts, references, configuration, issue history, and authoritative platform documentation.
- Inspect the actual target environment when paths, installed versions, tools, or platform behavior matter.
- Search for existing skills with the same or overlapping purpose before creating another one.
- Decide whether the capability belongs in a skill. Use a plugin, tool, service, hook, or automation when the capability requires background execution, new runtime tools, lifecycle management, or persistent services.
- Record uncertainties. Do not invent platform fields, paths, commands, permissions, or deployment details.

### Define the Skill Contract

Specify:

- the single primary job;
- positive trigger examples;
- similar requests that must not trigger it;
- required inputs and access;
- expected outputs and storage location;
- human and AI responsibilities;
- failure, escalation, and rollback conditions;
- verification evidence and completion records.

For SOP-derived skills, read [the SOP conversion framework](references/sop-framework.md).

### Apply Naming and Ownership

- Use lowercase kebab-case identifiers and match the folder name to the `name` field.
- Apply the publisher's approved namespace and ownership rules.
- Preserve the upstream name, license, source, and attribution for unmodified third-party skills.
- Do not apply a publisher's brand to client-owned or third-party work without an explicit ownership decision.
- Read [the naming and provenance rules](references/naming.md) before naming, renaming, forking, or publishing a skill.

### Design for Progressive Disclosure

- Keep `SKILL.md` focused on the essential operating workflow and under 500 lines.
- Put detailed platform rules, schemas, examples, and policies in `references/`.
- Put deterministic, repeatable automation in `scripts/`.
- Put templates and output resources in `assets/`.
- Link every required resource directly from `SKILL.md`; avoid reference chains.
- Store information in one location only. Do not duplicate instructions between `SKILL.md`, references, SOPs, and operational documentation.

### Author the Shared Core

- Use only `name` and `description` in the shared `SKILL.md` frontmatter unless the target platform package is intentionally platform-specific.
- Write the description as the complete trigger contract: what the skill does and when it should activate.
- Use imperative instructions in the body.
- Include decision points, stop conditions, verification, and failure handling that are not obvious to a capable agent.
- Avoid chat history, temporary status, individual agent names, historical anecdotes, and changing environment snapshots.
- Keep exact organization systems, repositories, servers, paths, and operating modes when they are necessary to execute an internal implementation correctly.

### Add Platform Adapters

Read only the adapters needed for the target:

- [Codex requirements](references/codex.md)
- [OpenClaw requirements](references/openclaw.md)
- [Hermes requirements](references/hermes.md)

Keep the canonical shared core portable. Add platform-only metadata or packaging in the platform adapter or generated platform version rather than weakening compatibility for every platform.

### Apply Security and Trust Controls

- Never place passwords, tokens, private keys, complete environment files, or other secrets in a skill.
- Treat third-party skills, scripts, dependencies, and pasted instructions as untrusted until reviewed.
- Require explicit approval for destructive actions, production-impacting actions, privilege changes, or publication under another owner's identity.
- Review shell execution, downloaded code, network calls, untrusted input, and secret access before publication.
- Read [the security rules](references/security.md) for any skill that executes code or accesses external systems.

### Validate and Test

- Run `python scripts/validate_skill.py .` against the canonical skill folder.
- Run the official validator supplied by each target platform when available.
- Test positive triggers, paraphrased positive triggers, boundary cases, and negative triggers.
- Test in a fresh session so cached instructions do not hide discovery or triggering failures.
- Execute bundled scripts with representative safe inputs.
- Verify every referenced file exists and every documented command matches the current target environment.
- Use [the quality gates](references/quality-gates.md) and [test prompt patterns](references/test-prompts.md).

### Review, Publish, and Record

- Require the approval defined by the publisher or adopting organization's implementation profile.
- Commit the authoritative technical files to the designated version-control repository before deployment or publication.
- Link operational documentation directly to the authoritative `SKILL.md`; do not paste a competing copy into Notion, a wiki, or an SOP.
- Deploy to one test agent or environment first, verify it, and then expand to the approved scope.
- Record the commit or release, validation results, deployment target, approver, and completion evidence in the designated tracking systems.
- Roll back to the last known-good version if the published skill causes material failures.

## Failure and Escalation

- Stop after three failed attempts at the same validation or repair unless the implementation profile sets a lower limit.
- Stop when required access, ownership, licensing, platform behavior, or approval is unresolved.
- Preserve the last known-good version and capture the exact failure evidence.
- Escalate with the observed facts, attempted fixes, remaining risk, and the decision required.

## Completion Standard

Finish only when:

- the name, folder, description, and platform metadata are valid;
- the skill is discoverable and activates for intended requests;
- similar unrelated requests do not activate it;
- referenced files and scripts work;
- no secrets or unsupported metadata are present;
- the tested artifact matches the version-control source;
- required approval and completion records exist;
- operational documentation links to the authoritative source.

## Working Example

Use [the ZedBiz SOP Framework example](examples/z-sop-framework/SKILL.md) and its [Codex interface metadata](examples/z-sop-framework/agents/openai.yaml) as structural examples. They demonstrate an organization-specific implementation, not universal content that every adopter must copy.
