# Changelog

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](https://semver.org) and [Keep a Changelog](https://keepachangelog.com).

## [Unreleased]

## [0.3.0] - 2026-04-26

### Added

- `founder-profile` skill: full discovery-first intake before any drafting or form interaction
- `onboarding` skill: routes founders based on situation (first-time, reapplicant, has draft, stuck, got interview)
- `form-fill` skill: Playwright-based human-in-the-loop form fill - Claude fills every field, founder approves each section, founder clicks all buttons
- 5 reapplication scenarios (A-E) covering same idea/more progress, pivot, new co-founders, new company, mixed team - consistent across `founder-profile` and `reapplying.md`
- Summer 2026 new form questions: tech stack + AI coding tools (Progress section), optional coding agent session upload (experimental - explicitly mentions Claude Code and Cursor)
- All conditional form fields documented from live form testing: users/revenue/legal entity/investment reveal flows
- Co-founder invite mechanics confirmed: email required, 10% equity minimum, "how long known + met in person?" appears immediately
- `yc-context.md`: Michael Seibel departure (March 2025), AI coding tool fluency as YC priority #5 for Summer 2026
- `application-questions.md`: restructured to match real Summer 2026 form (founder profile sub-pages vs main form), all conditional fields with exact rubrics

### Changed

- `form-fill` skill: complete rewrite to match real form structure - founder profile sub-pages contain wildcard hack + impressive thing (not Company section as previously documented)
- `application-questions.md`: restructured from legacy section labels (A/B/C/D/E/F) to actual form sections (Founder Profile, Founders, Company, Progress, Idea, Equity, Curious, Batch Preference)
- Equity ownership confirmed as free-text field ("Name (Title) X%"), not a structured table
- Revenue conditional: 6-month table auto-labeled with last 6 calendar months + revenue sources + growth notes fields

### Fixed

- `.playwright-mcp/` added to `.gitignore` - prevents live session snapshots with personal application data from being committed
- Em dash sweep across all skill files for CI compliance

## [0.2.0] - 2026-04-26

### Added

- `founder-profile` skill: structured discovery phase before any form interaction
- `form-fill` skill: initial Playwright-based form auto-fill with human-in-the-loop approval
- GitHub Actions CI: SKILL.md line count, description length, em dash check, JSON validation, frontmatter presence
- Branch protection: 1 required PR approval on `main`
- Quarterly remote agent routine for YC context refresh (batch deadlines, RFS, deal terms, partner roster)

### Changed

- Rebuilt workflow for maximum acceptance rate: discovery first, gatekeeping questions before form, critique before submit
- README: full flow explanation with ASCII diagram

## [0.1.0] - 2026-04-26

### Added

- Initial release of `yc-application` skill with 7 workflow modes: draft, critique, stuck, video, interview, reapplying, strategic context
- 7 reference files with question rubrics, critique framework, interview prep, reapplying guide, successful applications (Dropbox S07, Basedash S20), video guidelines, and YC context
- Evaluation suite: 5 test cases + 3 real accepted application inputs (Flex S16, OpenPhone S18, Muse W12)
- Output formatting conventions and source refresh schedule in `docs/`
- Build script for `.skill` artifact packaging

---
> Changelog maintained automatically by [🐘 elephant](https://github.com/tonone-ai/elephant) -- keep your changelog up to date without the manual work.
