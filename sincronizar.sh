#!/bin/bash
cd "$(dirname "$0")" || exit 0
find .trava -maxdepth 0 -mmin +10 -exec rmdir {} \; 2>/dev/null
mkdir .trava 2>/dev/null || exit 0
trap 'rmdir .trava' EXIT

{
  echo "== $(date '+%F %T')"
  ./exportar.sh
  if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -qm "chore: sincroniza configuração do claude" -m "Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>"
  fi
  [ -n "$(git log origin/main..main --oneline)" ] && git push -q
} >> .sincronizar.log 2>&1
