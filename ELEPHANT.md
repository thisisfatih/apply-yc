---
> Team memory managed by [🐘 elephant](https://github.com/tonone-ai/elephant) — commit this file with your changes. Shared across sessions, repos, and teammates.
---

2026-04-26 14:39 : feat: initial release of yc-application skill v0.1.0 — @fatih
2026-04-26 14:47 : docs: update install to claude plugin marketplace commands — @fatih
2026-04-26 14:49 : readme footer added — @fatih
2026-04-26 15:10 : docs: reformat CHANGELOG to KaC format and add elephant footers — @fatih
2026-04-26 15:14 : fix: em dash sweep + changelog/readme updates — @fatih
2026-04-26 15:24 : merge: elephant-metadata branch into main — @fatih
2026-04-26 15:27 : ci: add skill validation workflow — @fatih
2026-04-26 15:37 : feat: add founder-profile and form-fill skills (v0.2.0) — @fatih
2026-04-26 15:42 : feat(founder-profile): discovery-first intake before form capture — @fatih
2026-04-26 15:43 : fix(ci): skill description >1024 chars -- awk reads past frontmatter --- when no post-description YAML key exists; fixed by adding version: key + trimming description to 594 chars — @fatih
2026-04-26 15:46 : feat: rebuild flow for max acceptance rate — @fatih
2026-04-26 15:48 : feat: onboarding skill + rewrite README with full flow — @fatih
2026-04-26 15:49 : fix: em dash sweep in all 4 skill files (form-fill, yc-application, founder-profile, onboarding) — CI grep was failing — @fatih
2026-04-26 16:03 : feat(reapplying): add scenarios C/D/E for new co-founders, new company, mixed team — @fatih
2026-04-26 16:17 : feat: ground all skills in real Summer 2026 form structure — @fatih
2026-04-26 16:23 : fix: add .playwright-mcp to gitignore, em dash sweep founder-profile — @fatih
2026-04-26 18:24 : docs: add shields.io badges to README (version 0.2.0, MIT, Claude Code platform) — @fatih
2026-04-26 18:28 : feat: add marketplace.json to enable claude plugin marketplace add — @fatih
2026-04-26 20:24 : feat: RFS alignment in Phase 2 + caveman compression guide for application answers — @fatih
2026-04-26 20:31 : fix(install): `claude plugin marketplace add` wrong command for single plugin -- use `claude plugin add thisisfatih/apply-yc` — @fatih
2026-04-26 20:35 : test(skills): test apply-yc by running in this repo (not fresh folder) — faster fix cycle; trigger via "I want to apply to YC" or `/onboarding` — @fatih
2026-04-26 20:37 : fix: marketplace.json missing description/category/url fields — @fatih
2026-04-26 20:41 : [!!] git: local main diverged from dev/main at df0f732 -- local has 3 memory-engrave commits, remote has 4 feature commits (v0.3.0, marketplace, RFS); fix: `git rebase dev/main` -- @fatih
2026-04-26 20:55 : fix: marketplace.json source "." -> "./" -- schema requires trailing slash; was causing `plugins.0.source: Invalid input` on `claude plugin marketplace add` — @fatih
2026-04-26 21:02 : fix: marketplace top-level name apply-yc -> thisisfatih — @fatih
2026-04-26 21:04 : fix: plugin.json author.name missing + remove invalid skills array — @fatih
2026-04-26 21:46 : [!!] takeover recon: FOUNDER_PROFILE inter-skill contract undefined -- form-fill depends on schema that founder-profile never defines; fix in ~30 min -- @fatih
2026-04-26 21:46 : audit: eval coverage skewed -- all 5 evals hit yc-application only; zero coverage for onboarding routing, handoff, form-fill; evals not in CI — @fatih
2026-04-26 21:46 : audit: mode 0 draft-from-scratch has no guard -- runs with zero founder context if yc-application invoked directly; add bounce-back check — @fatih
2026-04-26 21:46 : report: full takeover saved to .reports/apex-takeover-2026-04-26-1800.html -- 1 CRIT, 2 HIGH, 5 INFO; ~4.5 hr total fix effort — @fatih
2026-04-26 21:46 : feat(yc-context): add YC AI-native doctrine section -- 7 concepts from YC source: AI-as-OS, closed loops, queryable company, software factories, no human middleware, token-max, 3 archetypes — @fatih
2026-04-26 21:46 : feat(critique-rubric): add AI-native signal check -- 5 signals to scan before question-by-question pass; catches "we use AI to..." framing vs OS-level integration — @fatih
2026-04-26 22:08 : fix(ci): awk bleeds past frontmatter --- into file body — @fatih
2026-04-26 22:08 : fix(ci): added /^---/ stop condition to awk -- form-fill/founder-profile/onboarding now 342/380/363 chars vs 12792/3807/3481; all pass 1024-char limit — @fatih
2026-04-26 22:08 : fix(git): rebased local main on dev/main -- resolved ELEPHANT.md conflict keeping both feat entries; local now 1 commit ahead of dev/main — @fatih
2026-04-26 22:09 : feat: README badges added (version/license/platform) + version bumped 0.3.0 -> 0.9.1 across plugin.json, CHANGELOG, README — @fatih
2026-04-26 22:09 : rule: CLAUDE.md versioning rule added -- plugin.json + README badge + CHANGELOG must match; update all three in same commit — @fatih
