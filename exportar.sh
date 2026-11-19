#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")"
C="$HOME/.claude"

rm -rf home skills memoria
mkdir -p home skills memoria

cp "$C/CLAUDE.md" "$C/settings.json" "$C/statusline.sh" "$C/keybindings.json" home/
for d in midias-sociais x linkedin; do
  [ -d "$C/$d" ] && cp -r "$C/$d" home/
done
find home -name '*.bak' -delete

for s in "$HOME/.agents/skills"/* "$C/skills"/*; do
  n=$(basename "$s")
  case "$n" in synced|video-shotcraft) continue ;; esac
  cp -rL "$s" skills/
done

for m in "$C/projects"/*/memory; do
  [ -n "$(ls -A "$m" 2>/dev/null)" ] || continue
  p=$(basename "$(dirname "$m")")
  cp -r "$m" "memoria/$p"
done

python -c "import json,os; d=json.load(open(os.path.expanduser('~/.claude.json'))); json.dump({'mcpServers': d.get('mcpServers', {})}, open('home/mcp-usuario.json','w'), indent=2)"
echo "Exportado: $(ls skills | wc -l) skills, $(ls memoria | wc -l) pasta(s) de memória."
