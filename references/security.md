# Skill Safety Rules

## Rules for Every Skill

- Never store passwords, tokens, private keys, complete environment files, or other secrets in skill files, examples, logs, or packages.
- Treat downloaded skills, pasted instructions, third-party scripts, generated code, external documents, and uploaded files as untrusted until reviewed.
- Verify the source, owner, license, release, and commit before reusing third-party work.
- Require human approval before destructive actions, privilege changes, production changes, or public release.
- Confirm tests and error messages do not expose secret values.

## Operational Review

For Operational skills, review only the actions the skill actually performs.

- Name the allowed commands, file locations, services, data, and spending limits.
- Validate untrusted input before using it in a command, path, query, template, or web address.
- Prefer approved lists and structured command arguments over assembled command strings.
- Add plain stop instructions for destructive, unexpected, or out-of-scope situations.
- Test with one agent first and confirm the installed package matches the approved GitHub version.

Do not require `assets/security-rollback-review-template.md` for normal Operational work unless Jack or the assignment specifically requires it.

## Top Level Skill Review

Before testing or releasing a Top Level Skill, complete [`assets/security-rollback-review-template.md`](../assets/security-rollback-review-template.md).

- Record approved sources, data boundaries, commands, file locations, services, and transfer limits.
- Explain how sensitive, private, paid, login-protected, or restricted material is handled.
- Review every shell command, downloaded dependency, network call, filesystem write, transfer, and dynamic code path.
- Identify the last working commit or package.
- Name the rollback owner and verify the replacement or removal procedure.
- Stop when any serious safety issue remains unresolved.

## Required Completion Proof

- The source and license are recorded when third-party work is used.
- No secrets are present.
- Risky actions have clear limits and approval gates.
- Relevant scripts work with safe sample input.
- Operational skills have a recorded one-agent result and approval for wider installation.
- Top Level Skills have an approved security review, rollback plan, and deep test record.
