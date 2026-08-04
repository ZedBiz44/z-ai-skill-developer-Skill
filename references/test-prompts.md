# Trigger Test Patterns

Create task-specific prompts from these patterns. Do not tell the test agent the expected result.

## Positive Triggers

- Create a reusable skill from this workflow.
- Turn this SOP into a skill for the named platform.
- Update this existing skill to support a new workflow.
- Audit this skill for structure, security, and triggering problems.
- Repair this skill because it is not being discovered.
- Validate this skill for the target platforms.

## Paraphrased Positive Triggers

- Package these repeatable instructions so another AI agent can use them.
- Make this procedure a reusable agent capability.
- Check whether this skill is safe and correctly structured.
- Fix the skill metadata and supporting files.

## Boundary Cases

- The user asks whether a repeatable capability should be a skill, plugin, tool, or automation.
- The user provides an SOP with missing access, output, or verification information.
- The requested skill includes shell commands or untrusted input.
- The target platforms support different frontmatter fields.

## Negative Triggers

- Execute a one-time business task that does not require a reusable skill.
- Explain what an AI skill is without creating or reviewing one.
- Edit an unrelated document, spreadsheet, image, or codebase.
- Install a finished skill without changing or auditing it.
- Operate a plugin or tool when no skill design work is requested.

## Evidence to Capture

- Prompt used
- Whether the skill activated
- Files or output produced
- Validation result
- Incorrect activation or missed trigger
- Changes required before publication
