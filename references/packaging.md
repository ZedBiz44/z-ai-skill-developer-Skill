# Skill Packaging and Deployment

## Use a Two-Layer Structure

Keep the authoring repository separate from the installable package. The repository is the source of truth for development, templates, operational records, documentation, and review evidence. The deployable package contains only files required by the target platform at runtime.

```plain text
repository-root/
  SKILL.md
  agents/
  references/
  assets/
  docs/
  templates/
  activity-logs/
  scripts/build_package.sh
  dist/<skill-name>/
    SKILL.md
    agents/
    references/ or assets/ only when directly required at runtime
```

Do not place README files, changelogs, activity logs, issue records, back-office tracking folders, or secret material in `dist/<skill-name>/`.

## Build the Package

Run the canonical clean build and validation commands from the repository root:

```bash
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/<skill-name>
```

The default builder includes the shared `SKILL.md`, any `agents/` adapter directory, and the `assets/`, `references/`, and `scripts/` resource directories when they exist. Pass explicit resource names only when intentionally building a narrower platform-specific package, then verify that every file linked by the packaged `SKILL.md` remains present.

- Treat root `SKILL.md` and required adapter files as authoritative.
- Build or copy only runtime-required files into `dist/<skill-name>/`.
- Do not hand-edit generated package files.
- Validate the generated package from `dist/<skill-name>/`, where the directory name exactly matches the `name` frontmatter field.
- Commit the source and generated package only when the organization intentionally versions generated artifacts. Otherwise exclude `dist/` and create it during release or deployment.

## Deploy and Verify

- Install only `dist/<skill-name>/` on the pilot environment.
- Record the source commit, package path, target installation path, and current platform version.
- Verify discovery in a fresh session or after the platform’s required refresh.
- Run the pilot and trigger-test record against the installed current artifact.
- Do not expand rollout when the deployed package differs from the tested source commit.

## Roll Back

- Keep the prior known-good commit or release available before replacing a pilot deployment.
- If the pilot causes material failure, stop rollout, restore the prior known-good package, and record the failure and rollback evidence.
- Do not delete authoring records during rollback.
