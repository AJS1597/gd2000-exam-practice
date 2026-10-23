#!/bin/sh
# Make a set of changes to practice staging some files and not others.
#
# Run from anywhere:   sh tools/prepare.sh
#
# Creates:   cards/script-cards.md
#            playtest/session-1.log, session-2.log, session-3.log
# Modifies:  rules/draft-rules.md

set -e

cd "$(dirname "$0")/.."

if [ -f cards/script-cards.md ]; then
	echo "cards/script-cards.md already exists; nothing to do."
	exit 0
fi

cat > cards/script-cards.md <<'EOF'
# Cards Added by the Script

| Card | Cost | Attack | Health | Notes |
|------|------|--------|--------|-------|
| Clockwork Sprite | 2 | 1 | 3 | Cheap and fragile. |
| Rust Hound | 4 | 3 | 4 | Aggressive midrange. |
| Paper Titan | 8 | 6 | 9 | Expensive finisher. |
EOF

cat >> rules/draft-rules.md <<'EOF'

## Script-generated rules

- A unit that survives combat gains 1 health.
- A player with no units at the start of a round loses 2 health.
EOF

mkdir -p playtest

i=1
while [ "$i" -le 3 ]; do
	{
		echo "session: $i"
		echo "date: $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
		echo "players: 2"
		echo "rounds: 7"
		echo "winner: player B"
		echo "note: script-generated playtest data; do not commit this directory"
	} > "playtest/session-$i.log"
	i=$((i + 1))
done

echo "Created:   cards/script-cards.md"
echo "Created:   playtest/session-1.log, session-2.log, session-3.log"
echo "Modified:  rules/draft-rules.md"
echo
echo "Stage cards/script-cards.md and rules/draft-rules.md."
echo "Leave playtest/ untracked."
