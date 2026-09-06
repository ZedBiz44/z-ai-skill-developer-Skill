# Quality Gates by Risk Level

Apply only the requirements for the selected risk level.

## Lean

Use Lean for a simple skill that gives instructions but does not make important changes.

- Keep one clear `SKILL.md`.
- Run a basic validity check.
- Run one real successful test.
- Confirm the purpose, trigger, folder name, frontmatter, links, and source ownership are correct.
- Confirm the skill contains no secrets.

Lean does not require formal security paperwork, a rollback plan, a special deployment package, or a full trigger matrix.

## Operational

Use Operational when the skill can create or edit files, run approved commands, read from an API, or update an internal system within clear limits.

Require everything from Lean, plus:

- State exactly which actions, commands, files, services, and data are allowed.
- State when the agent must stop and who approves the next step.
- Protect against damaging actions, unintended file changes, unsafe input, and secret exposure.
- Build a clean installation package tied to the approved GitHub version.
- Test the package with one agent first.
- Obtain the required human approval before wider installation. Jack approves wider ZedBiz installation.

Operational does not automatically require a full security review or formal rollback paperwork.

## Top Level Skill

Use Top Level Skill when the skill handles sensitive business data, changes production systems, can spend significant money, or will be distributed outside the organization.

Require everything from Operational, plus:

- Complete and approve the implementation profile.
- Complete the full security review.
- Record and verify the rollback plan and last working version.
- Run deep multi-level testing, including positive, paraphrased, boundary, negative, failure, and rollback tests.
- Record the one-agent test and wider-installation decision.

Paid-provider use or client delivery is a review signal, not an automatic Top Level classification. Confirm the approved amount, authority, sensitivity, reversibility, recurrence, and likely impact. Ordinary model and agent-runtime charges do not count as significant spending.
