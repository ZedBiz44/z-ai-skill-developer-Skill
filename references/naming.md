# Naming, Ownership, and Provenance

## Universal Rules

- Use a lowercase kebab-case identifier containing only letters, numbers, and single hyphens.
- Keep the skill folder and frontmatter `name` identical.
- Keep the identifier at or below 64 characters.
- Use a clear functional name that describes the skill's primary job.
- Use a readable display name only on surfaces that support one.
- Search the publisher's repositories, registries, marketplaces, and installed skills for collisions before publishing.

## Publisher Profiles

Apply the publisher's approved namespace.

- Publisher-owned or materially customized skill: apply the publisher's namespace and ownership rules.
- Client-owned skill: follow the client's approved naming policy.
- Unmodified third-party skill: preserve the upstream identifier, publisher, license, and source.
- Forked third-party skill: document who owns the fork, retain required attribution, and confirm license compatibility before renaming.

## ZedBiz Publisher Profile

- Use `z-` for every skill created, owned, published, or materially customized by ZedBiz.
- Use `z-ai-skill-developer` as the canonical public identifier for this skill.
- Record ZedBiz as publisher or owner using official platform metadata where supported.
- Where a platform has no publisher field, preserve ZedBiz provenance through the GitHub owner, repository, source link, license or notice, release record, and marketplace listing.
- Store authoritative technical files in the designated ZedBiz GitHub repository.
- Record operational decisions and completion evidence in the designated ZedBiz Notion records.
- Do not add `z-` to untouched third-party skills or client-owned skills unless ZedBiz is explicitly the publisher or owner.

## Surface Mapping

For `z-ai-skill-developer`:

- Skill identifier: `z-ai-skill-developer`
- Skill folder: `z-ai-skill-developer`
- Shared frontmatter name: `z-ai-skill-developer`
- Codex display name: `Z AI Skill Developer`
- Repository target name: `z-ai-skill-developer`
- Publisher or owner: `ZedBiz`

If a platform cannot use the exact identifier, document the platform limitation and the mapped value. Do not silently create a different brand or canonical name.
