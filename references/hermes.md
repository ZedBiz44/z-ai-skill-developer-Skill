Use this reference when creating, updating, testing, or publishing a Hermes skill.

## Shared Compatibility

Keep `name` and `description` in the shared cross-platform frontmatter. Add Hermes-only fields, such as version, author, license, platforms, requirements, tags, configuration, or blueprint metadata, only in an intentionally Hermes-specific package. Preserve the canonical name unless a documented platform constraint requires a mapping.

## Placement and Discovery

Inspect the current Hermes installation and source before deployment. Bundled skills live in the Hermes repository `skills/` tree. Official optional skills live in `optional-skills/`. Specialized or community skills may use a Skills Hub or an approved repository tap.

A container-mounted path is not a separate source of truth. Verify both the host package and the live container see the intended Skill folder.

## Security and Configuration

Declare secret requirements through Hermes-supported environment-variable or credential-file metadata. Keep secret values out of the Skill. Use configuration metadata for non-secret paths and preferences. Treat inline shell substitution as high risk because it can execute on the host.

## Testing and Publication

Test the installed Skill with Hermes’ current toolset and a representative request. Use a normal/default Hermes turn budget, or at least `--max-turns 12`, for a representative Skill test. Do not use a three-turn one-shot cap for a request that may require several reasoning or tool steps: Hermes can hit its cap and then fail while producing its summary even when the Skill itself is healthy.

Verify required tools, settings, and credentials are handled securely. Record the source commit, package checksum, command used, and result. Publish through the current Hermes Skills workflow or approved repository tap only after validation and approval.
