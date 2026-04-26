# apply-yc

Claude Code plugin for writing YC applications that get interviews.

Built on Paul Graham's "How to Apply" essay, partner advice (Seibel, Tan, Caldwell, Livingston), and real accepted applications (Dropbox S07, Basedash S20).

---

## Install

```bash
claude plugin marketplace add thisisfatih/apply-yc
claude plugin install apply-yc@thisisfatih
```

---

## How it works

Three skills. Run in order.

### 1. Discovery — `founder-profile`

Fires first. Understand the founder before touching the form.

- **Reapply check** — Applied before? What batch, what feedback, what changed? 30% of accepted founders applied before. This context changes everything.
- **Deep discovery** — Founder background, hard achievements, company, traction, why now. Probes until specific. No adjectives, only facts.
- **Angle analysis** — Surfaces your 3 strongest cards for a YC partner. Flags instant-reject risks (no technical founder, no product, no traction, "no competitors") before any drafting happens.

Nothing gets drafted until the angle analysis is confirmed.

### 2. Drafting + critique — `yc-application`

Drafts in the order that matters, not form order.

- **Gatekeeping questions first** — 50-char pitch, "what does your company make", "most impressive thing". These decide whether the rest gets read. Multiple versions, iterate until excellent.
- **Complete remaining sections** — all other fields, using the established narrative.
- **Partner critique pass** — reads the full draft as a YC partner would. Flags every [KILL] and [WEAK] answer. Rewrites, not comments.

Nothing goes to the form until [KILL] flags are resolved.

### 3. Form fill — `form-fill`

Requires Playwright MCP. Opens the live YC application form.

- Claude fills every field from the locked profile
- Screenshot shown after each section — you approve before advancing
- You click all buttons (Save, Submit, Next). Claude never clicks those.

---

## Full flow

```
"I want to apply to YC"
        │
        ▼
  founder-profile
  ├── Applied before? → reapply context
  ├── Who are you, what's the company, what's impressive
  ├── What's your traction (real numbers)
  └── Angle analysis → confirm before proceeding
        │
        ▼
  yc-application
  ├── 50-char pitch (iterate until excellent)
  ├── Product description (partner must get it in 4 seconds)
  ├── Most impressive thing (PG: most important question)
  ├── Complete remaining sections
  └── Full partner critique → fix all [KILL] flags
        │
        ▼
  form-fill (+ Playwright)
  ├── Open ycombinator.com/apply (you log in)
  ├── Claude fills each section
  ├── You review screenshot → approve
  └── You click Submit
```

---

## Without the form filler

If you don't want Playwright, the first two skills work standalone. Run `founder-profile` + `yc-application` to get polished, partner-reviewed answers. Paste them yourself.

---

## Maintenance

**Every batch (4x/year):** refresh `yc-context.md` — deadlines, RFS list, deal terms. A scheduled agent does this automatically and opens a PR if anything changed.

**Every year:** re-verify deal terms, partner roster, acceptance rate stats.

See `docs/sources.md` for all citation URLs.

---

## Structure

```
skills/
  yc-application/
    SKILL.md                     router + core principles
    references/
      application-questions.md  full question list, rubrics, real examples
      critique-rubric.md        partner-mindset checklist
      interview-prep.md         format, question bank, what not to do
      reapplying.md             "what changed" strategy + implicit signal detection
      successful-applications.md Dropbox S07 + Basedash S20 annotated
      video-and-demo.md         founder video guidelines
      yc-context.md             batch structure, deal terms, RFS, partners
  founder-profile/
    SKILL.md                    discovery + angle analysis
  form-fill/
    SKILL.md                    Playwright form filler
evals/
  evals.json                    5 test cases
  inputs/                       3 real accepted applications (Flex S16, OpenPhone S18, Muse W12)
docs/
  sources.md                    all citation URLs + refresh schedule
```

## License

MIT

---
> README maintained automatically by [🐘 elephant](https://github.com/tonone-ai/elephant) — keep your docs in sync without the manual work.
