# Z AI Skill Developer

This repository is the technical source of truth for `z-ai-skill-developer`, a proportional, risk-based framework for creating, repairing, auditing, validating, and converting reusable AI skills.

## When to Use This Skill

- Create a new skill or turn an approved workflow into a skill.
- Audit or repair an existing skill’s contract, structure, references, validation, or packaging.
- Choose the lightest appropriate Lean, Operational, or Fleet/Public control set.

## When Not to Use It

- Use this repository as a substitute for the runtime procedure in the skill being built.
- Treat ordinary processing cost or a client deliverable as an automatic Fleet/Public classification.
- Publish, deploy, or make destructive changes without the approval required by the target system.

## Authoritative Source and Repository Contents

`SKILL.md` is the authoritative runtime guide. The repository root is the authoritative technical source, while operational SOPs or governed business records remain in their approved operational systems.

- `SKILL.md` is the authoritative runtime guide and defines the skill contract.
- `agents/openai.yaml` provides runtime discovery metadata for supported OpenAI-compatible environments.
- `references/` contains focused guidance that the runtime instructions may load when needed.
- `assets/` contains templates or other resources directly required by the skill.
- `scripts/` contains deterministic validation and, where required, package-build helpers.

## Validation and Deployment

Run the repository validation before release or installation. Build a deployable package only when the target runtime or approved rollout requires one.

```bash
python3 scripts/validate_skill.py .
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/z-ai-skill-developer
```

Validate on the actual target runtime after installation. Do not assume discovery paths, credentials, or platform behaviour without checking the live environment.

## Safety and Approval Boundaries

Keep secrets and private keys out of skill repositories. Confirm human approval before destructive, production, or public actions, and use the smallest governance process that fits the actual risk.

## Status and Contributions

Keep this README aligned with the actual skill contract and file structure. Make changes through version control, validate them before release, and document material deployment or governance decisions in the repository’s approved records.
