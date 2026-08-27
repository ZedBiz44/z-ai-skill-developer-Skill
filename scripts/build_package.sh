#!/usr/bin/env bash
set -euo pipefail

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
skill_file="$root_dir/SKILL.md"
manifest_file="$root_dir/package-resources.txt"

if [[ ! -f "$skill_file" ]]; then
  echo "ERROR: SKILL.md is missing at $skill_file" >&2
  exit 1
fi

skill_name="$(sed -n 's/^name: *//p' "$skill_file" | head -n 1 | xargs)"
if [[ -z "$skill_name" ]]; then
  echo "ERROR: Could not read the skill name from $skill_file" >&2
  exit 1
fi

package_dir="$root_dir/dist/$skill_name"
rm -rf "$package_dir"
mkdir -p "$package_dir"
cp "$skill_file" "$package_dir/SKILL.md"

resources=("$@")
if [[ ${#resources[@]} -eq 0 ]]; then
  if [[ ! -f "$manifest_file" ]]; then
    echo "ERROR: package-resources.txt is required when no explicit resources are supplied." >&2
    exit 1
  fi
  while IFS= read -r resource || [[ -n "$resource" ]]; do
    resource="${resource%%#*}"
    resource="$(printf '%s' "$resource" | xargs)"
    [[ -n "$resource" ]] && resources+=("$resource")
  done < "$manifest_file"
fi

for resource in "${resources[@]}"; do
  case "$resource" in
    agents|assets|references|scripts)
      if [[ -d "$root_dir/$resource" ]]; then
        cp -a "$root_dir/$resource" "$package_dir/$resource"
      else
        echo "ERROR: Approved resource directory is missing: $resource" >&2
        exit 1
      fi
      ;;
    *)
      echo "ERROR: Unsupported resource '$resource'. Use an approved directory listed in package-resources.txt." >&2
      exit 1
      ;;
  esac
done

printf 'Built deployable package: %s\n' "$package_dir"
