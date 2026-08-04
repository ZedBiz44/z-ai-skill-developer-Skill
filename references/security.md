# Skill Security Review

## Trust Boundary

- Treat downloaded skills, pasted instructions, third-party scripts, dependencies, and generated code as untrusted until reviewed.
- Verify the source repository, owner, license, release, and commit before reusing code.
- Preserve upstream attribution and license notices.

## Secrets

- Never store secret values in `SKILL.md`, scripts, examples, logs, test fixtures, or operational documentation.
- Refer to approved environment variables, credential files, secret managers, or platform setup flows.
- Confirm that tests and error output do not reveal secret values.

## Code Execution

- Review every shell command, subprocess, network call, filesystem write, dependency install, and dynamic evaluation path.
- Validate and constrain untrusted input before using it in a command, path, query, template, or URL.
- Prefer allowlists and structured arguments over concatenated command strings.
- Require approval before destructive actions, privilege changes, remote publication, or production deployment.

## Supply Chain

- Minimize dependencies.
- Pin or verify dependencies when reproducibility or security requires it.
- Do not download and execute runtime code unless the risk and update mechanism are explicitly approved.
- Scan or manually inspect packaged scripts before publication.

## Required Evidence

- Source and license are recorded.
- No secrets are present.
- Dangerous operations have approval gates.
- Untrusted input is constrained.
- Scripts were tested with safe representative inputs.
- Rollback or removal instructions exist for deployed skills.
