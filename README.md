# Z AI Skill Developer

This repository is the technical source of truth for `z-ai-skill-developer`. The Skill helps an agent create, repair, audit, validate, or convert reusable AI skills using the smallest process that fits the risk.

## When to Use This Skill

Use this Skill to create a new skill, turn an approved workflow into a skill, repair an existing skill, or check a skill’s scope, structure, security, validation, or package.

Do not use it to complete a one-time business task, install an unchanged finished skill, or build a plugin, MCP server, background service, or automation that needs more than a skill can provide.

## What Is Authoritative

`SKILL.md` is the authoritative runtime guide. This repository is the authoritative technical source. The Notion SOP is the business-facing operating procedure and release record.

- `SKILL.md` tells the agent what to do at runtime.
- `README.md` tells a human what the Skill is for, when to use it, and how to validate it.
- `agents/` holds supported runtime metadata.
- `references/`, `assets/`, and `scripts/` hold resources the Skill needs.
- `package-resources.txt` lists the folders deliberately included in a deployable package.

Do not keep a competing executable copy of `SKILL.md` in Notion.

## Validate and Build

Run this before releasing or installing from the repository:

```bash
python3 scripts/validate_skill.py --repository .
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/z-ai-skill-developer
```

The first command validates the repository, including this README. The final command validates the deployable package. Test the installed package on the actual target runtime. Do not assume paths, discovery, credentials, or platform behavior.

The README stays in the authoring repository. It is not included in the deployable package unless a target platform specifically requires it.

## Safety and Approval Boundaries

Keep secrets and private keys out of the repository and package. Obtain human approval before destructive, production, or public actions. Use the smallest governance process that fits the real risk.

## Keeping This Repository Healthy

Keep the README aligned with the actual Skill contract and file structure. Make changes through version control, run the checks above, and record material deployment or governance decisions in the approved GitHub issue and Technical Journal.
