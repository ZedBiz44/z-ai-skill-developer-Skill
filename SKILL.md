---
name: z-ai-skill-developer
description: Create, update, audit, validate, repair, or convert SOPs and workflows into reusable AI skills for Codex, OpenClaw, and Hermes.
---

# Z AI Skill Developer

Build clear, reusable, secure skills from business requirements, workflows, SOPs, or existing skill files. Keep one authoritative technical copy in version control and adapt only platform-specific parts.

## Core Workflow

### Establish the Assignment

- Confirm whether the request is to create, update, audit, validate, repair, migrate, package, or publish a skill.
- Confirm intended users, business outcome, target platforms, deployment locations, operating mode, and approval requirements.
- Inspect the adopting organization’s profile. Use the [organization profile template](assets/organization-profile-template.md) when no organization profile exists.
- Complete a [per-skill implementation profile](assets/skill-implementation-profile-template.md) before deploying a ZedBiz-owned or materially customized skill beyond a pilot.
- Identify technical and operational sources of truth before editing anything.
- Keep investigation read-only when approval is required before changes.

### Inspect Before Designing

- Read existing skills, SOPs, scripts, references, configuration, issue history, and authoritative platform documentation.
- Inspect the actual target environment when paths, installed versions, tools, or platform behavior matter.
- Search for existing skills with the same or overlapping purpose before creating another one.
- Decide whether the capability belongs in a skill. Use a plugin, tool, service, hook, or automation when it requires background execution, new runtime tools, lifecycle management, or persistent services.
- Record uncertainties. Do not invent platform fields, paths, commands, permissions, or deployment details.

### Define the Skill Contract

Specify the single primary job, positive triggers, requests that must not trigger, required inputs and access, expected outputs and storage, human and AI responsibilities, failure and escalation conditions, rollback conditions, verification evidence, and completion records.

For SOP-derived skills, read the [SOP conversion framework](references/sop-framework.md).

### Apply Naming and Ownership

- Use lowercase kebab-case identifiers and match the deployable folder name to the `name` field.
- Apply the publisher’s approved namespace and ownership rules.
- Preserve the upstream name, license, source, and attribution for unmodified third-party skills.
- Do not apply a publisher’s brand to client-owned or third-party work without an explicit ownership decision.
- Read the [naming and provenance rules](references/naming.md) before naming, renaming, forking, or publishing a skill.

### Design the Authoring and Deployment Structure

- Keep `SKILL.md` focused on essential operating workflow and under 500 lines.
- Put detailed platform rules, schemas, examples, and policies in `references/`.
- Put deterministic, repeatable automation in `scripts/`.
- Put reusable templates and output resources in `assets/`.
- Link every required resource directly from `SKILL.md`; avoid reference chains.
- Keep information in one authoritative location. Do not duplicate technical instructions between `SKILL.md`, references, SOPs, and operational documentation.
- Follow the [packaging and deployment guide](references/packaging.md) when the repository also contains documentation, tracking records, templates, or activity logs.
- Build a minimal `dist/<skill-name>/` package for installation. Do not hand-edit generated deployment files.

### Author the Shared Core and Adapters

- Use only `name` and `description` in shared `SKILL.md` frontmatter unless the target package is intentionally platform-specific.
- Write the description as the complete trigger contract: what the skill does and when it should activate.
- Use imperative instructions in the body.
- Include decision points, stop conditions, verification, and failure handling that are not obvious to a capable agent.
- Avoid chat history, temporary status, individual agent names, historical anecdotes, and changing environment snapshots.
- Keep exact organization systems, repositories, servers, paths, and operating modes when required for correct internal execution.
- Read only the adapters needed for the target: [Codex](references/codex.md), [OpenClaw](references/openclaw.md), or [Hermes](references/hermes.md).
- Keep platform-only metadata in adapters or generated platform packages rather than weakening shared compatibility.

### Apply Security and Trust Controls

- Never place passwords, tokens, private keys, complete environment files, or other secrets in a skill.
- Treat third-party skills, scripts, dependencies, external documentation, pasted instructions, and generated code as untrusted until reviewed.
- Require explicit approval for destructive actions, production-impacting actions, privilege changes, private-data transfers, or publication under another owner’s identity.
- Review shell execution, downloaded code, network calls, file writes, transfers, untrusted input, and secret access before publication.
- Complete the [security and rollback review](assets/security-rollback-review-template.md) for skills that read external content, run commands, write files, transfer data, access services, or affect a live environment.
- Read the full [security rules](references/security.md) when any of those conditions apply.

### Validate, Test, and Pilot

- Run `bash scripts/build_package.sh` to build the current deployable package, then run `python3 scripts/validate_skill.py dist/<skill-name>`.
- Run the official validator supplied by each target platform when available.
- Test positive, paraphrased-positive, boundary, and negative prompts in a fresh session.
- Execute bundled scripts with representative safe inputs.
- Verify every referenced file exists and every documented command matches the current target environment.
- Record discovery, triggering, pilot behavior, and rollback readiness with the [pilot and trigger-test record](assets/pilot-test-record-template.md).
- Use the [quality gates](references/quality-gates.md) and [test prompt patterns](references/test-prompts.md).

### Review, Publish, and Record

- Require the approval defined by the implementation profile.
- Commit authoritative technical files before deployment or publication.
- Install only the generated `dist/<skill-name>/` package on one pilot agent or environment first.
- Verify the installed package matches the tested source commit, then expand only to the approved scope.
- Link operational documentation directly to the authoritative GitHub `SKILL.md`; do not paste a competing executable copy into Notion, a wiki, or an SOP.
- Record the commit or release, validation results, deployment target, approver, completion evidence, and any exception in designated tracking systems.
- Roll back to the last known-good package if the pilot or published skill causes material failure.

## Failure and Escalation

- Stop after three failed attempts at the same validation or repair unless the implementation profile sets a lower limit.
- Stop when access, ownership, licensing, platform behavior, approval, or required security review is unresolved.
- Preserve the last known-good version and capture exact failure evidence.
- Escalate with observed facts, attempted fixes, remaining risk, and the decision required.

## Completion Standard

Finish only when the implementation profile, security and rollback review, package structure, name, folder, description, and platform metadata are valid; the skill is discoverable and activates for intended requests; unrelated requests do not trigger it; referenced files and scripts work; no secrets or unsupported metadata are present; the tested package matches the source commit; required approval and completion records exist; and operational documentation links to the authoritative source.
