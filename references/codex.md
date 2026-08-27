Use this reference when creating, packaging, testing, or publishing a skill for Codex.

## Shared Structure

- Keep the shared `SKILL.md` frontmatter to `name` and `description`.
- Keep the folder name identical to the skill name.
- Include `agents/openai.yaml` for UI-facing metadata.
- Use `scripts/`, `references/`, and `assets/` only when they directly support runtime work or required validation.
- Keep the root `README.md` in the authoring repository. Do not add the README, activity logs, tracking files, quick references, or changelogs to the distributable Skill folder.
- Build a minimal `dist/<skill-name>/` package using the approved `package-resources.txt` list.

## Interface Metadata

In `agents/openai.yaml`:

- Quote string values.
- Set `interface.display_name` to a readable title.
- Keep `interface.short_description` between 25 and 64 characters.
- Make `interface.default_prompt` a short example prompt that explicitly mentions `$skill-name`.
- Add icons or brand colour only when the publisher provides them.

## Create, Validate, and Test

- Start with the repository's `SKILL.md` and README contract. Do not rely on helper scripts that are not part of the repository.
- Validate the authoring repository, including the README:

```bash
python3 scripts/validate_skill.py --repository .
```

- Build and validate the Codex package:

```bash
bash scripts/build_package.sh
python3 scripts/validate_skill.py dist/<skill-name>
```

- Start a fresh Codex session and confirm an expected prompt discovers and triggers the installed package.
- Confirm an unrelated prompt does not trigger the Skill.

## Source of Truth

Treat GitHub as the authoring source. Local installed Skill folders are deployment copies and may be replaced during installation or upgrades.
