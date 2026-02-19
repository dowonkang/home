---
name: shell-scripts
description: Shell script coding standards for POSIX sh and Fish scripts
---

# Shell Scripts

## POSIX Shell Scripts (.sh files)
- Shebang: `#!/usr/bin/env sh`
- Use double quotes for variables: `"$variable"`
- Check command existence: `command -v "$cmd" >/dev/null 2>&1`
- Check directory existence: `[ -d "$dir" ]` or `[ ! -d "$dir" ]`
- Export variables: `VAR="value"` then `export VAR`
- Unset temporary variables at script end: `unset var1 var2`
- Use POSIX-compliant syntax (no bashisms)
- Format with `shfmt`

## Fish Scripts (.fish files)
- No shebang needed
- Check command existence: `command -sq cmd` or `command -q cmd`
- Check directory/file: `test -d "$dir"` or `test -e "$file"`
- Set exported variables: `set -gx VAR "value"`
- Conditionals: `if test condition` / `end`
- Format with `fish_indent`
