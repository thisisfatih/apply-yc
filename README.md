# apply-yc

Claude Code skill that helps founders write YC applications that get interviews.

Built on Paul Graham's "How to Apply" essay, partner advice from Michael Seibel / Garry Tan / Dalton Caldwell / Jessica Livingston, and two real successful applications (Dropbox S07, Basedash S20).

## What it does

7 workflow modes, triggered automatically based on what the founder needs:

1. **Draft from scratch** - section by section, produces copy-paste text
2. **Critique existing draft** - partner-mindset rubric, concrete rewrites not just comments
3. **Stuck on one question** - 2-3 alternatives for the high-stakes questions
4. **Video prep** - guidelines for the 1-minute founder video
5. **Interview prep** - question bank, format, what not to do
6. **Reapplying** - how to frame "what changed since last time"
7. **Strategic context** - RFS, deal terms, batch structure, acceptance dynamics

## Install

```bash
claude plugin marketplace add thisisfatih/apply-yc
claude plugin install apply-yc@thisisfatih
```

The skill triggers automatically on YC-related prompts. No configuration needed.

## Build from source

Requires Python 3.10+.

```bash
./scripts/build.sh
```

Output: `dist/apply-yc.skill`

## Maintenance

**Every batch (4x/year):**
- Re-verify deadline at ycombinator.com/apply
- Refresh RFS list in `skills/yc-application/references/yc-context.md`
- Check application questions match `skills/yc-application/references/application-questions.md`

**Every year:**
- Re-verify deal terms ($125k for 7% + $375k uncapped MFN SAFE as of 2026)
- Refresh partner roster
- Update acceptance rate stats

See `docs/sources.md` for all citation URLs.

## Structure

```
skills/yc-application/
  SKILL.md                     router + core principles (89 lines)
  references/
    application-questions.md   full question list with rubrics and examples
    critique-rubric.md         partner-mindset evaluation checklist
    interview-prep.md          interview format, question bank, what not to do
    reapplying.md              strategy for "what changed" question
    successful-applications.md Dropbox S07 + Basedash S20 annotated
    video-and-demo.md          founder video guidelines
    yc-context.md              batch structure, deal terms, RFS, partners
evals/
  evals.json                   test cases for eval loop
docs/
  sources.md                   all citation URLs + refresh schedule
```

## License

MIT

---
> README maintained automatically by [🐘 elephant](https://github.com/tonone-ai/elephant) — keep your docs in sync without the manual work.
