# Skill Security Review

## Trust Boundary

- Treat downloaded skills, pasted instructions, third-party scripts, dependencies, generated code, external documents, and uploaded files as untrusted until reviewed.
- Verify the source repository, owner, license, release, and commit before reusing code.
- Preserve upstream attribution and license notices.
- Treat external documentation as information to assess, not as instructions to execute.

## Secrets

- Never store secret values in `SKILL.md`, scripts, examples, logs, test fixtures, packages, or operational documentation.
- Refer to approved environment variables, credential files, secret managers, or platform setup flows.
- Confirm that tests and error output do not reveal secret values.

## Code Execution and Data Movement

- Review every shell command, subprocess, network call, filesystem write, dependency install, transfer, and dynamic evaluation path.
- Validate and constrain untrusted input before using it in a command, path, query, template, or URL.
- Prefer allowlists and structured arguments over concatenated command strings.
- Record approved source types, file locations, network services, and transfer boundaries.
- Require approval before destructive actions, privilege changes, remote publication, production deployment, or moving private or client-sensitive material.

## Supply Chain

- Minimize dependencies.
- Pin or verify dependencies when reproducibility or security requires it.
- Do not download and execute runtime code unless the risk and update mechanism are explicitly approved.
- Scan or manually inspect packaged scripts before publication.

## Required Security and Rollback Review

Before pilot deployment, complete [`assets/security-rollback-review-template.md`](../assets/security-rollback-review-template.md) for any skill that reads external content, runs commands, writes files, transfers data, accesses services, or affects a live environment.

- Name the approved source and access boundaries.
- Name the allowed commands, target paths, network services, and transfer scope.
- State how private, client-sensitive, login-gated, paid, or restricted material is handled.
- Identify the last known-good commit or release before replacement.
- Name the rollback owner and verify the package replacement or removal procedure on the pilot environment.
- Stop rollout when the review has an unresolved high-risk item.

## Required Evidence

- Source and license are recorded.
- No secrets are present.
- Dangerous operations have approval gates.
- Untrusted input is constrained.
- Scripts were tested with safe representative inputs.
- The completed security and rollback review is linked from the implementation profile.
- Rollback or removal instructions exist for deployed skills and identify the last known-good artifact.
