# Hermes Adapter

Use this reference when creating, updating, testing, or publishing a Hermes skill.

## Shared Compatibility

- Keep `name` and `description` in the shared cross-platform frontmatter.
- Add Hermes-only fields such as version, author, license, platforms, requirements, tags, configuration, or blueprint metadata only to an intentionally Hermes-specific package.
- Preserve the canonical name across the shared source and Hermes package unless a documented platform constraint requires a mapping.

## Placement and Discovery

- Inspect the current Hermes installation and skill source before deployment.
- Bundled skills live in the Hermes repository's `skills/` tree.
- Official optional skills live in `optional-skills/`.
- Specialized or community skills may be distributed through a Skills Hub or custom repository tap.
- Do not treat a container-mounted path as a separate source of truth from its host or repository source.

## Security and Configuration

- Declare secret string requirements through Hermes-supported environment-variable metadata rather than writing values into the skill.
- Use Hermes configuration metadata for non-secret paths and preferences.
- Use credential-file requirements for OAuth tokens, certificates, or other file-based secrets.
- Treat inline shell substitution as high risk because it can execute on the host; use it only for trusted sources and when explicitly required.

## Testing and Publication

- Test with the current Hermes skill toolset and a representative request.
- Verify required tools, settings, and credentials are handled securely.
- Publish through the current Hermes skills workflow or approved repository tap only after validation and approval.
