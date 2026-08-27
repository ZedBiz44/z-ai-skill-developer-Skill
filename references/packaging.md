## Proportional Packaging

Packaging depends on the skill's risk tier and target runtime.

### Internal / Single-Platform Skills

For simple internal skills and direct single-platform installs, the repository folder can be the package. Keep the root small, readable, and limited to files needed for execution and documentation.

Every Skill repository needs a human-readable root `README.md`. The README is part of the authoring repository. Do not copy it into a deployable package unless the target platform specifically requires it.

### Fleet / Public / Cross-Platform Skills

For wide rollout, public distribution, or multiple platform adapters, keep two clear layers:

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
    only the approved runtime folders from package-resources.txt
```

The repository is the technical source of truth. The `dist/<skill-name>/` folder is the deployable copy. Do not require this structure just because normal model use has a cost or a client will receive the work. Use it when the agreed risk, rollout size, repository contents, or target platform makes a separate artifact useful.

## Choose Package Contents

`package-resources.txt` is the approved list of folders copied into the deployable package. Keep it minimal. Add a folder only when `SKILL.md` needs it at runtime or a documented validation step requires it.

Do not ship research notes, activity logs, tracking documents, changelogs, or the repository README in the package by default.

## Build and Validate

When a deployable package is required, run:

```bash
python3 scripts/validate_skill.py --repository .
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/<skill-name>
```

The release test must also verify that the built package contains exactly `SKILL.md` and the folders listed in `package-resources.txt`.

## Deploy and Verify

- Install the approved package on the target environment.
- Verify discovery in a fresh session.
- Confirm the installed `SKILL.md` matches the approved Git commit or checksum.
- For Fleet/Public work, do not expand rollout when the deployed package differs from the tested source commit.
