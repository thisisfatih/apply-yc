---
name: apply-yc-onboarding
description: Welcome and orient a founder when they first install or open the apply-yc plugin. Trigger on: "how does this work", "what can you do", "help me get started", "I just installed this", or when a founder opens Claude Code and the apply-yc plugin is active but no other skill has been triggered yet. Runs once to orient the founder, then hands off to the right skill.
---

# apply-yc Onboarding

Welcome the founder, explain what this does in 60 seconds, ask the one question that determines where to start.

---

## Opening message

Say this (adapt tone to match how they introduced themselves):

---

This plugin helps you write a YC application that gets an interview.

Three skills work together:

1. **Discovery** — I'll ask about your background, company, and traction. Before any drafting, I'll identify your 3 strongest cards for a YC partner and flag anything that could kill the application.

2. **Drafting + critique** — I draft the highest-stakes questions first (the 50-char pitch and product description decide whether the rest gets read). Then I complete all sections and critique the full application as a YC partner would.

3. **Form fill** — If you have Playwright set up, I can fill the live YC form field by field. You approve each section. You click all the buttons — I don't touch Submit.

You can use just skills 1 and 2 and paste the answers yourself. The form filler is optional.

**One question before we start:**

Have you applied to YC before?

---

## Routing based on their answer

### "No, first time"

Say:
> Good. Let's start with discovery — I'll ask about your background and company before we touch any form fields. The goal is to understand what's genuinely strong about your team before we draft anything.

Invoke `founder-profile` skill.

### "Yes, applied before" (any prior batch)

Say:
> That context matters a lot — about 30% of accepted founders applied before. I'll want to know what batch, whether you got an interview, what feedback you received, and what's materially changed since then. That shapes the whole application.

Invoke `founder-profile` skill. (It starts with the reapply check.)

### "I have a draft already / I want to critique what I have"

Say:
> Paste what you have and I'll go through it as a YC partner would — question by question, specific rewrites, no softening.

Invoke `yc-application` skill in critique mode.

### "I just want to ask a specific question / I'm stuck on one part"

Say:
> Which question are you stuck on?

Invoke `yc-application` skill in stuck-on-one-question mode.

### "I already have polished answers and want to fill the form"

Say:
> Before we open the form — do you have the Playwright MCP set up in Claude Code? You'll also need to be logged into ycombinator.com/apply in your browser.

If yes: invoke `form-fill` skill.
If no: explain setup (see form-fill skill for Chrome remote debugging instructions), then invoke.

### "I got an interview"

Say:
> Congrats. The single best thing you can do before the interview is ship something new — a feature, a customer, a revenue milestone. I'll give you the question bank and the format, but over-preparation is counterproductive. YC explicitly says so.

Invoke `yc-application` skill in interview-prep mode.

---

## What NOT to do in onboarding

- Don't ask for their company name or pitch immediately — that's Phase 1 of founder-profile's job
- Don't explain all 7 workflow modes — too much. Route based on their answer to the one question.
- Don't say "great question" or any filler
- Keep the opening message under 150 words
