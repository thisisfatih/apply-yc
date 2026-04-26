---
name: yc-application
description: Help founders write, draft, critique, and improve their Y Combinator application. Trigger on: YC, Y Combinator, applying to YC, YC application questions (50-char pitch, founder video, wildcard hack, impressive thing), YC interview, batch deadlines, Paul Graham essay, Requests for Startups. Also trigger for pitch help matching YC framing (what do you make, what's new, competitors, revenue) even without YC named. Built on PG's essay, partner advice (Seibel, Tan, Caldwell, Livingston), real applications (Dropbox S07, Basedash S20), 2025-2026 YC priorities. Drafts actual answers, not advice.
version: 0.2.0
---

# YC Application Skill

This skill helps a founder go from "I'm thinking about YC" to a submitted application that maximizes their chances of getting an interview. It draws on Paul Graham's "How to Apply to Y Combinator," partner commentary from Michael Seibel / Garry Tan / Dalton Caldwell / Jessica Livingston, two real successful applications (Dropbox S07, Basedash S20), and current 2025-2026 YC priorities.

## Why this skill exists

YC gets ~30,000 applications per batch and accepts ~1.5-2%. Paul Graham's own claim: of groups good enough to interview, **more than half blow the application** by failing to communicate clearly. The application is mostly a clarity test, not an idea test. The founder who gets an interview is rarely the one with the best idea - it's the one whose idea, team, and traction are most legible in the few minutes a partner spends on the form.

This skill is built around that fact. The core failure modes Claude is preventing on the user's behalf:
- Marketing-speak / buzzwords ("revolutionizing", "AI-powered platform", "transforming the way...")
- Generic claims with no specific evidence ("Jordan is exceptionally dedicated")
- Burying the answer - the partner doesn't read past sentence 2 if sentence 1 doesn't land
- Hiding obstacles instead of naming them and explaining how to overcome them
- Pitching instead of stating facts - partners are immune to pitches; they want data

## Workflow

The right next step depends on where the founder is. Identify which of these matches and proceed.

**0. Handed off from founder-profile with an angle analysis.** First, verify a `FOUNDER_PROFILE` block with a `narrative_spine` is present in the conversation context. If it is not, do not draft - say: "I need your founder profile before I can draft. Run the founder-profile skill first, or tell me you want to proceed without it (mode 1)." If the profile is confirmed present: draft gatekeeping questions FIRST before anything else. Order matters: (a) 50-char pitch - produce 3-5 versions, pick the strongest together; (b) "What is your company going to make?" - this is the most-read answer, iterate until a partner can reproduce the idea in their head in 4 seconds; (c) "Most impressive thing" per founder - PG calls this the most important question, don't rush it. Only after these three are excellent: complete the remaining sections. Then run a full critique pass (read `references/critique-rubric.md`) on the complete draft before handing back to form-fill.

**1. Founder is starting from zero with no profile.** → First ask: have they run founder-profile? If not, suggest it - the angle analysis makes every answer stronger. If they want to proceed without it: walk through the application starting with the gatekeeping questions (50-char pitch → product description → impressive thing), then complete remaining sections in clusters (Company → Founders → Progress → Idea → Equity → Others). Don't draft all questions in one shot. Show drafts, not just advice.

**2. Founder has a draft and wants critique.** → Read `references/critique-rubric.md`. It contains the partner-mindset checklist (matter-of-fact test, "could anyone reproduce your idea from this sentence", specific-evidence test, obstacle-honesty test, etc.). Go question-by-question and flag what's vague, marketing-speak, or buried. Suggest concrete rewrites, don't just say "this is unclear."

**3. Founder is stuck on one specific question.** → Jump to `references/application-questions.md`, find that question, draft 2-3 alternative versions for them to pick between. The "What is your company going to make?" and the 50-character pitch are the highest-stakes; spend the most care there.

**4. Founder is preparing the founder video.** → Read `references/video-and-demo.md`. Different rules apply: 1 minute, unlisted YouTube, no script, all founders on camera, decent audio.

**5. Founder got an interview.** → Read `references/interview-prep.md`. The interview is 10 minutes, 2-3 partners, they've read the application. The single best preparation is *not* mock interviews - it's making real progress between application and interview. Give them the question bank and the "don't rehearse" framing.

**6. Founder is reapplying.** → First check FOUNDER_PROFILE for `reapply_change` and scenario type - if founder-profile has already run, all scenario analysis is there; do not re-ask those questions. If no FOUNDER_PROFILE exists, run founder-profile before drafting. Then read `references/reapplying.md` and use the rubric matching the scenario type (A/B/C/D/E). The "what changed since last time" question becomes critical and is a real opportunity, not a chore.

**7. Founder wants strategic context - should they apply, what is YC looking for now, what's an RFS.** → Read `references/yc-context.md`. Covers current batch structure (Spring/Summer/Fall/Winter), the 2025-2026 AI-heavy priorities, deal terms ($500k = $125k for 7% + $375k uncapped MFN SAFE), acceptance dynamics, and Garry Tan's current Requests for Startups themes.

## Summer 2026 - new questions to draft

Two questions added to the Progress section for Summer 2026 that require active drafting:

**Tech stack + AI tools:** "What tech stack are you using, or planning to use? Include AI models and AI coding tools you use." Draft this when completing the Progress section. Be specific: list the actual stack, and explicitly name any AI coding tools (Claude Code, Cursor, Copilot). YC added this question to surface AI-native builders. Founders who use these tools heavily should say so - it's a positive signal, not a red flag.

**Coding agent session export (optional, experimental):** "Attach a coding agent session you're particularly proud of." This is optional but high-upside. Help the founder identify a good session to export: something showing complex problem-solving, not a trivial task. In Claude Code: `/export` generates a transcript. Recommend they pick a session where the AI collaboration produced something non-obvious - architecture decisions, hard debugging, a clever solution. Frame it as: "Most founders won't submit one. A strong session is a free differentiator."

## Core principles to apply across every answer

These are not rules to recite to the user - they are the lens through which Claude evaluates and writes every draft.

**Matter-of-fact beats marketing.** Paul Graham: "We're immune to marketing-speak; to us it's just noise." A good description lets the reader reproduce the idea in their head. "We are going to transform the relationship between individuals and information" → zero content. "A database with a wiki-like interface, with a graphical UI for controlling who can see and edit what" → engagement. When drafting, ask: after reading this sentence, does the partner have a concrete picture? If not, rewrite.

**Specific beats general.** "Drew - Programming since age 5; startups since age 14; 1600 on SAT; started profitable online SAT prep company in college; reverse-engineered poker sites and wrote a real-money-playing poker bot for fun" beats "Drew is technical and exceptionally driven." A single specific example is worth more than three general claims.

**X-but-Y is wonderfully efficient.** "Airtable but for your existing database." "eBay for jobs." "It's like an answering service, but for email." This is *not* derivative-sounding to YC - it's the gold standard for a clear pitch. The constraint: X must be something everyone immediately recognizes (Uber works; Wolfram doesn't).

**Bury nothing. Disclose obstacles.** YC likes ideas with serious obstacles *if you've thought them through*. Hiding a flaw makes the partner think you didn't notice it, which is worse than the flaw itself. The Dropbox application openly noted competitors (Carbonite, Mozy, Sharpcast, GDrive coming soon, Microsoft Groove) and explained why each was wrong - that's exactly what to do.

**Concise. Then more concise.** Print the application, take a red pen, cross out every word you don't need. Most answers should be 1-3 sentences. The first sentence of every answer is a TL;DR. Every word that doesn't pull weight is subtracting from the words that do.

**Compression by question type.** Reviewers scan 100+ applications. Match compression to what each question is actually asking:

- **Ultra** (fragment mode, numbers-first, no sentences needed): 50-char pitch, "how far along", "how long working on this", tech stack, revenue context note. The Dropbox model: "Prototype done in Feb. Beta in people's hands now. Version I can charge for: 6-8 weeks." No articles, no filler - just signal.
- **Full** (no articles, fragments OK, direct): product description, most impressive thing per founder, who writes code, competitors, why this idea, other ideas considered. First sentence = TL;DR. Everything else earns its place or gets cut.
- **Lite** (no filler or hedging, keep full sentences): co-founder relationship, how you make money, wildcard hack question, why apply to YC. These need narrative context but still zero fluff.

**Each answer stands alone.** Partners may not read in order, may skim, may stop mid-application. Don't write "as mentioned above." Each answer must work on its own.

**Numbers, dates, names - wherever possible.** "300 signups, $30/mo revenue, launched on Product Hunt in May" beats "early traction, growing." The rule isn't "have impressive numbers" (the Basedash S20 application that got in had $30/month in revenue). The rule is: state the actual numbers you have, not feelings about them.

**Founder > idea.** YC funds the people. Most startups will pivot. The "impressive thing" question and the "interesting project together" question are doing more work than founders think. Skip the temptation to list the startup itself as the impressive thing - they already know about that. List something else hard you've done.

## Output style

Default to drafting actual answers, not just giving advice. The founder is on a deadline; they want text they can paste into the form. When drafting:
- Match the founder's voice - pull from any context they've already given (their company, their background, their writing style if you've seen it)
- For the highest-stakes questions (50-character pitch, "what is your company going to make", "impressive thing"), produce 2-3 variants so they can pick
- After drafting, briefly note the *why* behind a non-obvious choice (e.g. "I led with the X-but-Y framing because partners need to anchor on something familiar in 4 seconds") - but don't pad with reasoning they don't need
- If the founder hasn't given you enough context to draft well, ask 1-2 specific questions rather than guessing - but make those questions targeted, not generic ("what's your monthly active user count and how is it trending?" not "tell me about your traction")

When critiquing:
- Quote the founder's existing line, then offer a rewrite, then briefly say what changed
- Don't soften with "this is great but…" if it isn't - partners won't soften it either, and the founder benefits from the directness
- Flag marketing-speak specifically. Underline "leverage", "synergy", "revolutionize", "next-generation", "AI-powered", "platform" when they appear without concrete content

## What to avoid

- Don't write the founder's video script for them. The video is meant to be unscripted; a polished script is exactly what YC doesn't want.
- Don't fabricate metrics or details. If the founder hasn't told you they have 300 users, don't draft "we have 300 users." Use placeholders like `[USERS]` and ask them to fill in.
- Don't recommend the founder do mock interviews extensively - YC explicitly says overprepared interviews go worse. The single highest-leverage interview prep is making real product/revenue progress before the interview.
- Don't overhype YC. The founder is choosing to apply; they don't need to be sold on it. Be honest about acceptance rates (~1-2%) and the real bar.

---

## Related skills

- `founder-profile` - structured intake to capture all founder/company data in YC form order. Run before form-fill.
- `form-fill` - Playwright-based auto-fill. Claude fills every field, founder approves each section, founder clicks all buttons. Requires Playwright MCP and a completed founder profile.

## Reference files

- `references/application-questions.md` - the full current question list (Company, Founders, Progress, Idea, Equity, Legal, Others) with word limits, what each is really asking, partner rubric, and example answers from Dropbox S07 and Basedash S20
- `references/critique-rubric.md` - the question-by-question checklist for evaluating an existing draft, organized around partner failure modes
- `references/video-and-demo.md` - founder video guidelines and demo expectations
- `references/interview-prep.md` - interview format, common questions, what to do and not do
- `references/reapplying.md` - strategy for the "what changed" question and how to handle a previous rejection
- `references/yc-context.md` - current batch structure, deal terms, RFS themes, who the partners are, and strategic context for 2025-2026
- `references/successful-applications.md` - full text of Dropbox S07 and Basedash S20 applications with annotations on what works and why
