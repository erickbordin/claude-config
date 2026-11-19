#!/bin/bash
export PATH="$PATH:/c/Users/KABUM/AppData/Local/Microsoft/WinGet/Links:/mnt/c/Users/KABUM/AppData/Local/Microsoft/WinGet/Links:$HOME/AppData/Local/Microsoft/WinGet/Links"
if ! command -v jq &>/dev/null; then
  echo -e "\033[1;31m[statusline] jq não encontrado!\033[0m"
  exit 0
fi

input=$(cat)

MODEL=$(echo "$input" | jq -r '.model.display_name')
DIR=$(echo "$input" | jq -r '.workspace.current_dir')
PCT=$(echo "$input" | jq -r '.context_window.used_percentage // 0' | cut -d. -f1)

CYAN='\033[36m'; GREEN='\033[32m'; YELLOW='\033[33m'; RED='\033[31m'; RESET='\033[0m'

if [ "$PCT" -ge 90 ]; then BAR_COLOR="$RED"
elif [ "$PCT" -ge 70 ]; then BAR_COLOR="$YELLOW"
else BAR_COLOR="$GREEN"; fi

FILLED=$((PCT / 10)); EMPTY=$((10 - FILLED))
printf -v FILL "%${FILLED}s"; printf -v PAD "%${EMPTY}s"
BAR="${FILL// /█}${PAD// /░}"

BRANCH=""
git rev-parse --git-dir > /dev/null 2>&1 && BRANCH=" | 🌿 $(git branch --show-current 2>/dev/null)"

H_PCT=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty' 2>/dev/null)
W_PCT=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty' 2>/dev/null)

H_STR="--"; W_STR="--"
[ -n "$H_PCT" ] && [ "$H_PCT" != "null" ] && H_STR="$(LC_NUMERIC=C printf '%.0f' "$H_PCT")%"
[ -n "$W_PCT" ] && [ "$W_PCT" != "null" ] && W_STR="$(LC_NUMERIC=C printf '%.0f' "$W_PCT")%"

echo -e "${CYAN}[$MODEL]${RESET} 📁 ${DIR##*/}$BRANCH"
echo -e "memory: ${BAR_COLOR}${BAR} ${PCT}%${RESET} | Usage: 5h:${H_STR} / 7d:${W_STR}"
