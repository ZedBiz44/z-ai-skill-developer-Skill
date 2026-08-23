# Skill Packaging and Deployment

## Proportional Packaging

Packaging requirements depend on the skill's risk tier and deployment target.

### Internal / Single-Platform Skills (Lean & Operational Tiers)
For simple skills or internal deployments (e.g., Ruby/Hermes), **the repository folder is the package**. 
- Do not create a separate `dist/` layer unless required by the platform.
- Ensure the repository root contains only the files necessary for execution and documentation.

### Fleet / Public / Cross-Platform Skills
For skills requiring wide rollout, public distribution, or multiple platform adapters, use a two-layer structure. The repository is the source of truth; the deployable package contains only runtime files.

Do not require this packaging merely because an assignment consumes ordinary model credits, uses a paid provider within established authority, or produces a client deliverable. Apply it when the agreed risk classification, repository contents, or target platform makes a separate deployment artifact useful.

```plain text
repository-root/
  SKILL.md
  agents/
  references/
  assets/
  docs/
  scripts/build_package.sh
  dist/<skill-name>/
    SKILL.md
    agents/
    (references/ or assets/ ONLY if directly required at runtime)
```

## Build the Package (When Required)

When `dist/` packaging is required, run:

```bash
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/<skill-name>
```

**Important:** The builder must only include resources (`assets/`, `references/`, `scripts/`) that are *explicitly required* by the skill at runtime. Do not automatically copy entire directories of research or templates into the deployable package.

## Deploy and Verify

- Install the skill on the target environment.
- Verify discovery in a fresh session.
- For Fleet/Public skills, do not expand rollout if the deployed package differs from the tested source commit.
