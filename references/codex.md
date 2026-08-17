# Codex Adapter

Use this reference when creating or packaging a skill for Codex.

## Structure

- Keep the shared `SKILL.md` frontmatter to `name` and `description`.
- Keep the folder name identical to the skill name.
- Include `agents/openai.yaml` for UI-facing metadata.
- Use `scripts/`, `references/`, and `assets/` only when they directly support execution.
- Do not add auxiliary files such as README, quick-reference, installation, activity-log, tracking, or changelog files inside the distributable skill folder.
- Keep those files in the authoring repository and generate a minimal `dist/<skill-name>/` package as described in [packaging.md](packaging.md).

## Interface Metadata

In `agents/openai.yaml`:

- Quote string values.
- Set `interface.display_name` to a readable title.
- Keep `interface.short_description` between 25 and 64 characters.
- Make `interface.default_prompt` a short example prompt that explicitly mentions `$skill-name`.
- Add icons or brand colour only when the publisher provides them.

## Creation and Validation

- Initialize new skills with the installed Skill Creator's `scripts/init_skill.py`.
- Regenerate `agents/openai.yaml` when it no longer matches `SKILL.md`.
- Run the installed Skill Creator's `scripts/quick_validate.py` or the organization validator against the generated `dist/<skill-name>/` folder.
- Start a fresh Codex session when validating discovery and triggering.

## Source of Truth

Treat the GitHub repository as the authoring source. Installed local skill folders are deployment copies and may be replaced during installation or upgrades.
