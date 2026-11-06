#!/bin/bash
# Installs my Claude Code skills and plugins into $HOME/.claude.
# Safe to re-run. Works as a cloud environment setup script and on a local machine:
#   curl -fsSL https://raw.githubusercontent.com/mortgageuae/skills/main/install.sh | bash
set -u
SK="$HOME/.claude/skills"
T=$(mktemp -d)
mkdir -p "$SK"
export PATH="/opt/node22/bin:$PATH"

# My skills (this repo)
if git clone -q --depth 1 https://github.com/mortgageuae/skills.git "$T/me"; then
  cp -r "$T/me/skills/." "$SK/"
fi

# Anthropic's document skills: not redistributable, so fetched from their source
if git clone -q --depth 1 https://github.com/ComposioHQ/awesome-claude-skills.git "$T/acs"; then
  cp -r "$T/acs/document-skills/." "$SK/"
fi

# Plugins (marketplace repo, plugin@marketplace)
while read -r repo plugin; do
  claude plugin marketplace add "$repo" >/dev/null 2>&1
  claude plugin install "$plugin" >/dev/null 2>&1 || echo "failed: $plugin"
done <<'EOF'
anthropics/claude-plugins-official slack@claude-plugins-official
nextlevelbuilder/ui-ux-pro-max-skill ui-ux-pro-max@ui-ux-pro-max-skill
pbakaus/impeccable impeccable@impeccable
Leonxlnx/taste-skill taste-skill@taste-skill
DietrichGebert/ponytail ponytail@ponytail
JuliusBrussee/caveman caveman@caveman
EOF

rm -rf "$T"
exit 0
