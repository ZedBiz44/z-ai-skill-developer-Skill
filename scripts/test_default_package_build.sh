#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill_file="$root_dir/SKILL.md"
manifest_file="$root_dir/package-resources.txt"
skill_name="$(sed -n 's/^name: *//p' "$skill_file" | head -n 1)"
if [[ -z "$skill_name" ]]; then
  echo "ERROR: Could not read the skill name from $skill_file" >&2
  exit 1
fi
if [[ ! -f "$manifest_file" ]]; then
  echo "ERROR: package-resources.txt is missing." >&2
  exit 1
fi

python3 "$root_dir/scripts/validate_skill.py" --repository "$root_dir"
bash "$root_dir/scripts/build_package.sh"
package_dir="$root_dir/dist/$skill_name"
python3 "$root_dir/scripts/validate_skill.py" "$package_dir"

test -f "$package_dir/SKILL.md"
test ! -e "$package_dir/README.md"

expected_entries=(SKILL.md)
while IFS= read -r resource || [[ -n "$resource" ]]; do
  resource="${resource%%#*}"
  resource="$(printf '%s' "$resource" | xargs)"
  [[ -n "$resource" ]] && expected_entries+=("$resource")
done < "$manifest_file"

for expected in "${expected_entries[@]}"; do
  test -e "$package_dir/$expected"
done

for item in "$package_dir"/*; do
  name="$(basename "$item")"
  allowed=false
  for expected in "${expected_entries[@]}"; do
    [[ "$name" == "$expected" ]] && allowed=true && break
  done
  if [[ "$allowed" != true ]]; then
    echo "ERROR: Unexpected package entry: $name" >&2
    exit 1
  fi
done

echo "Default package-build regression check passed: dist/$skill_name"
