# Make a set of changes to practice staging some files and not others.
#
# Run from anywhere:
#     powershell -ExecutionPolicy Bypass -File tools\prepare.ps1
#
# Creates:   cards/script-cards.md
#            playtest/session-1.log, session-2.log, session-3.log
# Modifies:  rules/draft-rules.md

$ErrorActionPreference = 'Stop'

$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

if (Test-Path 'cards/script-cards.md') {
    Write-Host 'cards/script-cards.md already exists; nothing to do.'
    exit 0
}

$cards = @(
    '# Cards Added by the Script'
    ''
    '| Card | Cost | Attack | Health | Notes |'
    '|------|------|--------|--------|-------|'
    '| Clockwork Sprite | 2 | 1 | 3 | Cheap and fragile. |'
    '| Rust Hound | 4 | 3 | 4 | Aggressive midrange. |'
    '| Paper Titan | 8 | 6 | 9 | Expensive finisher. |'
)
Set-Content -Path 'cards/script-cards.md' -Value $cards -Encoding ASCII

$rules = @(
    ''
    '## Script-generated rules'
    ''
    '- A unit that survives combat gains 1 health.'
    '- A player with no units at the start of a round loses 2 health.'
)
Add-Content -Path 'rules/draft-rules.md' -Value $rules -Encoding ASCII

New-Item -ItemType Directory -Force -Path 'playtest' | Out-Null

$stamp = (Get-Date).ToUniversalTime().ToString('yyyy-MM-ddTHH:mm:ssZ')
foreach ($i in 1..3) {
    $log = @(
        "session: $i"
        "date: $stamp"
        'players: 2'
        'rounds: 7'
        'winner: player B'
        'note: script-generated playtest data; do not commit this directory'
    )
    Set-Content -Path "playtest/session-$i.log" -Value $log -Encoding ASCII
}

Write-Host 'Created:   cards/script-cards.md'
Write-Host 'Created:   playtest/session-1.log, session-2.log, session-3.log'
Write-Host 'Modified:  rules/draft-rules.md'
Write-Host ''
Write-Host 'Stage cards/script-cards.md and rules/draft-rules.md.'
Write-Host 'Leave playtest/ untracked.'
