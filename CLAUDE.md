# apply-yc Plugin

Skill for helping founders write YC applications that get interviews.

## Skill

`skills/yc-application/SKILL.md` — router + core principles. 7 workflow modes:
1. Draft from scratch
2. Critique existing draft
3. Stuck on one question
4. Video prep
5. Interview prep
6. Reapplying
7. Strategic context (RFS, deal terms, partners)

Reference files in `skills/yc-application/references/` — load the relevant one per mode. Don't load all 7.

## Principles

- Default to drafting actual answers, not advice. Founder is on deadline.
- No marketing-speak. Flag it. Rewrite it.
- No fabricated metrics. Use placeholders like `[USERS]`.
- No em dash. Hyphens or rephrase.
- Honesty over polish. Partner-level directness.
- Real examples only: Dropbox S07, Basedash S20.

## Versioning Rule

When bumping the plugin version, update ALL THREE in the same commit — they must always match:

1. `.claude-plugin/plugin.json` → `"version": "X.Y.Z"`
2. `README.md` → badge `https://img.shields.io/badge/version-X.Y.Z-green`
3. `CHANGELOG.md` → new `## [X.Y.Z] - YYYY-MM-DD` section

Never let these diverge. If you find them out of sync, fix all three before proceeding.

## Maintenance

See `docs/sources.md` for citation URLs and refresh schedule.
See `CHANGELOG.md` for version history.
