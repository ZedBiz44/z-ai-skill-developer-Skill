# Proportional Packaging

## Lean

Lean skills do not need a special deployment package. A small repository folder may be installed directly when it contains only the files needed by the skill.

## Operational and Top Level Skill

Build a clean `dist/<skill-name>/` package tied to the approved GitHub commit.

```plain text
repository-root/
  README.md
  SKILL.md
  package-resources.txt
  agents/
  references/
  assets/
  scripts/
  dist/<skill-name>/
    SKILL.md
    only the approved runtime folders
```

Keep the repository README, research notes, activity logs, change records, and other authoring files out of the installation package unless the target platform requires them at runtime.

## Build and Check

- List approved runtime folders in `package-resources.txt`.
- Run `python3 scripts/validate_skill.py --repository .`.
- Run `bash scripts/build_package.sh`.
- Run `python3 scripts/validate_skill.py dist/<skill-name>`.
- Run the target platform's current official validator.
- Confirm the package contains only `SKILL.md` and the approved runtime folders.

## Install and Verify

- Record the source commit and package checksum.
- Install on one test agent first.
- Verify discovery and one representative task.
- Obtain the required approval before wider installation.
- Install the exact tested package on the remaining approved targets.
- Confirm every installed copy matches the approved GitHub commit or package checksum.

For Top Level Skills, also verify the documented rollback method before wider installation.
