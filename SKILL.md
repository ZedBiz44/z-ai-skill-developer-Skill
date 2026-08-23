---
name: z-ai-skill-developer
description: Create, update, audit, validate, repair, or convert workflows into reusable AI skills using a proportional, risk-based process.
---

# Z AI Skill Developer

Build clear, reusable, secure skills. Keep one authoritative technical copy in version control. Use the lightest effective workflow that meets the requirement.

## Proportional Process (Risk Tiers)

Classify the skill and apply only the required process. **Lean is the default.**

1. **Lean (Default):** For simple helpers, text processing, or low-risk tools.
   - Requires: One `SKILL.md` (target 80–150 lines), basic validation, and one happy-path test.
   - Do not use profiles, adapters, or `dist/` packaging.
2. **Operational:** For skills that write files, run local commands, or call safe APIs.
   - Requires: Lean baseline + specific pitfalls, failure stops, and targeted safety boundaries for the risky step.
3. **Fleet / Public:** For skills whose combined risk or rollout scope warrants formal governance, such as high-impact access to private data or credentials, destructive authority, public publication, regulated work, or organization-wide rollout.
   - Requires: Implementation profile, security/rollback review, full trigger matrix, pilot records, and `dist/` packaging.

## Money And Client Delivery Check

- Ordinary model, token, and agent-runtime charges incurred by processing a request do not automatically make a skill Fleet/Public.
- Treat potentially escalating provider spend and client delivery as review signals, not automatic classifications. Confirm expected total spend, existing budget authority, delivery authority, sensitivity, reversibility, recurrence, and likely impact with the requester or project owner.
- If the assignment already provides a clear budget and delivery authorization, record and follow it without repeatedly stopping for the same decision.
- A VA should confirm with the assignment owner or the VA's manager whether Operational controls are sufficient or Fleet/Public governance is warranted when the assignment does not already establish that decision. For ZedBiz work, route that decision to Jack or the VA's manager.
- When authority remains unresolved, stop before the unapproved material spend or client delivery. Continue safe preparation that does not cross that boundary.

## Core Workflow

### 1. Establish the Assignment

- Confirm the primary job, target platform, and operating mode.
- Search for an existing skill with the same purpose before creating a new one.
- Decide whether the capability belongs in a skill versus a plugin, tool, service, or automation.
- Do not invent platform fields, paths, commands, permissions, or deployment details.

### 2. Define the Skill Contract

- **Keep it minimal:** A skill needs only: when to use, numbered steps, pitfalls, and verification.
- **Do not stuff SOPs:** When converting an SOP, extract only the non-obvious guidance the agent needs at runtime. The detailed SOP remains in Notion.

### 3. Design and Structure

- **Line limits:** Target 80–150 lines for a simple skill, ~200 for a complex one. 500 lines is a hard ceiling, not a budget to fill.
- **Single platform default:** Do not write Codex, OpenClaw, and Hermes adapters unless a second runtime is explicitly required.
- **Naming:** Use lowercase kebab-case identifiers.
- **Packaging:** Do not require `dist/` packaging for internal or single-platform skills (e.g., internal Hermes skills). Include only resources directly required at runtime.

### 4. Apply Security Controls

- Never place passwords, tokens, private keys, complete environment files, or other secrets in a skill.
- Treat third-party code as untrusted until reviewed.
- Require explicit human approval for destructive actions, production changes, or live publications.

### 5. Validate and Test

- Scale tests to risk. A simple skill only needs to load and pass the happy path.
- Do not require positive/paraphrased/boundary/negative matrices unless the skill is Fleet/Public tier.
- Verify every referenced file exists and documented commands match the target environment.

### 6. Completion Standard

A skill is complete when:
- It reliably does the requested job.
- It contains no secrets.
- There is one authoritative source of truth in GitHub.
- It is verified working on the target platform.
- (Fleet/Public only) Formal profiles, security reviews, and pilot records are complete.
