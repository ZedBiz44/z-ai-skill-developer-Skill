#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
validator="$root_dir/scripts/validate_skill.py"
test_root="$(mktemp -d)"
trap 'rm -rf "$test_root"' EXIT

write_skill() {
  local body="$1"
  rm -rf "$test_root/example-skill"
  mkdir -p "$test_root/example-skill"
  printf '%s\n' "$body" > "$test_root/example-skill/SKILL.md"
}

write_skill '---
name: example-skill
description: A valid shared skill.
---

# Example Skill'
python3 "$validator" "$test_root/example-skill"

write_skill '---
name: example-skill
description: "unterminated
---

# Example Skill'
if python3 "$validator" "$test_root/example-skill"; then
  echo "ERROR: Broken YAML was accepted." >&2
  exit 1
fi

write_skill '---
name: example-skill
description: An OpenClaw-specific skill.
allowed-tools: Read Write
user-invocable: true
---

# Example Skill'
python3 "$validator" --platform openclaw "$test_root/example-skill"
if python3 "$validator" "$test_root/example-skill"; then
  echo "ERROR: OpenClaw-only fields were accepted as shared fields." >&2
  exit 1
fi

write_skill '---
name: example-skill
description: An invalid OpenClaw skill.
made-up-setting: true
---

# Example Skill'
if python3 "$validator" --platform openclaw "$test_root/example-skill"; then
  echo "ERROR: Unsupported OpenClaw field was accepted." >&2
  exit 1
fi

echo "YAML and OpenClaw frontmatter checks passed."
